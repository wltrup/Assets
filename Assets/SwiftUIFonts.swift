#if canImport(SwiftUI)
import SwiftUI
import AssetCatalogAware

/// Customize this source file as you see fit.

extension Assets {

    public enum SwiftUIFontId: SwiftUIFontIdentifier {

        case someButtonFont
        case someLabelFont

        public var font: Font? {
            switch self {

            case .someButtonFont:
                return .title

            case .someLabelFont:
                return .largeTitle

            }
        }

    }

}
#endif
