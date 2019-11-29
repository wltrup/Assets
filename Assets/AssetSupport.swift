import AssetCatalogAware

/// This source file is not meant to be customized.
/// It *can* be but, for most applications, it need not be.

private final class AssetBundleClass {}

public struct Assets: AssetCatalogStaticApiProvider {

    public init() {}
    public var catalogBundleClass: AnyClass { AssetBundleClass.self }

}

extension Assets: StringCatalogAware {}
extension Assets: ColorCatalogAware {}
extension Assets: ImageCatalogAware {}
extension Assets: SystemImageCatalogAware {}
extension Assets: SwiftUIFontCatalogAware {}
