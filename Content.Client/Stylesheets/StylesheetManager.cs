using System.Diagnostics;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using Content.Client.Resources;
using Content.Client.Stylesheets.Stylesheets;
using Robust.Client.ResourceManagement;
using Robust.Client.UserInterface;
using Robust.Client.UserInterface.RichText;
using Robust.Shared.Prototypes;
using Robust.Shared.Reflection;

namespace Content.Client.Stylesheets
{
    public sealed class StylesheetManager : IStylesheetManager
    {
        [Dependency] private readonly ILogManager _logManager = default!;
        [Dependency] private readonly IUserInterfaceManager _userInterfaceManager = default!;
        [Dependency] private readonly IReflectionManager _reflection = default!;
        [Dependency] private readonly IPrototypeManager _prototypeManager = default!;
        [Dependency] private readonly FontTagHijackHolder _fontTagHijackHolder = default!;

        [Dependency]
        private readonly IResourceCache
            _resCache = default!; // TODO: REMOVE (obsolete; used to construct StyleNano/StyleSpace)

        public Stylesheet SheetNanotrasen { get; private set; } = default!;
        public Stylesheet SheetSystem { get; private set; } = default!;

        [Obsolete("Update to use SheetNanotrasen instead")]
        public Stylesheet SheetNano { get; private set; } = default!;

        [Obsolete("Update to use SheetSystem instead")]
        public Stylesheet SheetSpace { get; private set; } = default!;

        private Dictionary<string, Stylesheet> Stylesheets { get; set; } = default!;

        public bool TryGetStylesheet(string name, [MaybeNullWhen(false)] out Stylesheet stylesheet)
        {
            return Stylesheets.TryGetValue(name, out stylesheet);
        }

        public HashSet<Type> UnusedSheetlets { get; private set; } = [];

        public void Initialize()
        {
            var sawmill = _logManager.GetSawmill("style");
            sawmill.Debug("Initializing Stylesheets...");
            var sw = Stopwatch.StartNew();

            // add all sheetlets to the hashset
            var tys = _reflection.FindTypesWithAttribute<CommonSheetletAttribute>();
            UnusedSheetlets = [..tys];

            Stylesheets = new Dictionary<string, Stylesheet>();
            SheetNanotrasen = Init(new NanotrasenStylesheet(new BaseStylesheet.NoConfig(), this));
            SheetSystem = Init(new SystemStylesheet(new BaseStylesheet.NoConfig(), this));
            SheetNano = new StyleNano(_resCache).Stylesheet; // TODO: REMOVE (obsolete)
            SheetSpace = new StyleSpace(_resCache).Stylesheet; // TODO: REMOVE (obsolete)

            _userInterfaceManager.Stylesheet = SheetNanotrasen;

            // Register a font hijack to ensure all NotoSans-based font prototypes used in
            // rich-text markup (e.g. [font=Default]) include NotoSansSC as a CJK fallback.
            // Without this, Chinese characters in chat speech messages render as tofu boxes
            // because the Default font prototype only maps to NotoSans-Regular.ttf.
            _fontTagHijackHolder.Hijack = CjkFontHijack;

            // warn about unused sheetlets
            if (UnusedSheetlets.Count > 0)
            {
                var sheetlets = UnusedSheetlets.AsEnumerable()
                    .Take(5)
                    .Select(t => t.FullName ?? "<could not get FullName>")
                    .ToArray();
                sawmill.Error($"There are unloaded sheetlets: {string.Join(", ", sheetlets)}");
            }

            sawmill.Debug($"Initialized {_styleRuleCount} style rules in {sw.Elapsed}");
        }

        /// <summary>
        ///     Font hijack that adds NotoSansSC as a CJK fallback for NotoSans-family font
        ///     prototypes resolved via rich-text markup tags such as <c>[font=Default]</c>.
        /// </summary>
        private Font? CjkFontHijack(ProtoId<FontPrototype> fontId, int size)
        {
            if (!_prototypeManager.TryIndex<FontPrototype>(fontId, out var proto))
                return null;

            var pathStr = proto.Path.ToString();

            // Only intercept NotoSans-based fonts; leave CJK, emoji, and stylistic fonts alone.
            if (!pathStr.Contains("NotoSans", StringComparison.OrdinalIgnoreCase))
                return null;

            // Skip fonts that are already CJK — no need to add a fallback to the fallback.
            if (pathStr.Contains("NotoSansSC", StringComparison.Ordinal))
                return null;

            var isBold = pathStr.Contains("Bold", StringComparison.Ordinal);
            var symbolVariant = isBold ? "Bold" : "Regular";
            var cjkPath = isBold
                ? "/Fonts/NotoSansSC/NotoSansSC-Bold.otf"
                : "/Fonts/NotoSansSC/NotoSansSC-Regular.otf";

            return _resCache.GetFont(
                new[]
                {
                    pathStr,
                    $"/Fonts/NotoSans/NotoSansSymbols-{symbolVariant}.ttf",
                    "/Fonts/NotoSans/NotoSansSymbols2-Regular.ttf",
                    cjkPath,
                },
                size);
        }

        private int _styleRuleCount;

        private Stylesheet Init(BaseStylesheet baseSheet)
        {
            Stylesheets.Add(baseSheet.StylesheetName, baseSheet.Stylesheet);
            _styleRuleCount += baseSheet.Stylesheet.Rules.Count;
            return baseSheet.Stylesheet;
        }
    }
}
