using System.Threading;
using System.Threading.Tasks;
using Content.Packaging;
using Robust.Packaging;
using Robust.Packaging.AssetProcessing;
using Robust.Server.ServerStatus;

namespace Content.Server.Acz;

public sealed class ContentMagicAczProvider : IMagicAczProvider
{
    private readonly IDependencyCollection _deps;

    public ContentMagicAczProvider(IDependencyCollection deps)
    {
        _deps = deps;
    }

    public async Task Package(AssetPass pass, IPackageLogger logger, CancellationToken cancel)
    {
#if FULL_RELEASE
        throw new InvalidOperationException("Magic ACZ is not available in release builds. Ensure the server was packaged correctly with client assets included (Hybrid ACZ).");
#endif

        var contentDir = DefaultMagicAczProvider.FindContentRootPath(_deps);

        await ClientPackaging.WriteResources(contentDir, pass, logger, cancel);
    }
}
