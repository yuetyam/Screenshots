import SwiftUI

extension Font {
        private static let regularFonts: [String] = ["SFPro-Regular", "ShangguSans-Regular"]
        private static let mediumFonts: [String] = ["SFPro-Medium", "ShangguSans-Medium"]
        static let common: Font = combine(fonts: regularFonts, size: 17)
        static let master: Font = combine(fonts: regularFonts, size: 28)
        static let significant: Font = combine(fonts: mediumFonts, size: 50)
        static func specific(size: CGFloat, bolder: Bool = false) -> Font {
                return bolder ? combine(fonts: mediumFonts, size: size) : combine(fonts: regularFonts, size: size)
        }
}

private extension Font {

        #if os(macOS)
        private static func found(font name: String) -> Bool {
                return NSFont(name: name, size: 15) != nil
        }
        #else
        private static func found(font name: String) -> Bool {
                return UIFont(name: name, size: 15) != nil
        }
        #endif

        #if os(macOS)
        private static func combine(fonts names: [String], size: CGFloat) -> Font {
                let fontNames: [String] = names.filter({ found(font: $0) })
                guard let primary = fontNames.first, let primaryFont = NSFont(name: primary, size: size) else { return Font.system(size: size) }
                let fallbacks = fontNames.dropFirst()
                guard !(fallbacks.isEmpty) else { return Font.custom(primary, size: size) }
                let primaryDescriptor: NSFontDescriptor = primaryFont.fontDescriptor
                let descriptors: [NSFontDescriptor] = fallbacks.map { fontName -> NSFontDescriptor in
                        return primaryDescriptor.addingAttributes([.name: fontName])
                }
                let descriptor: NSFontDescriptor = primaryDescriptor.addingAttributes([.cascadeList: descriptors])
                guard let combined: NSFont = NSFont(descriptor: descriptor, size: size) else { return Font.custom(primary, size: size) }
                return Font(combined)
        }
        #else
        private static func combine(fonts names: [String], size: CGFloat) -> Font {
                let fontNames: [String] = names.filter({ found(font: $0) })
                guard let primary = fontNames.first, let primaryFont = UIFont(name: primary, size: size) else { return Font.system(size: size) }
                let fallbacks = fontNames.dropFirst()
                guard !(fallbacks.isEmpty) else { return Font.custom(primary, size: size) }
                let primaryDescriptor: UIFontDescriptor = primaryFont.fontDescriptor
                let descriptors: [UIFontDescriptor] = fallbacks.map { fontName -> UIFontDescriptor in
                        return primaryDescriptor.addingAttributes([.name: fontName])
                }
                let descriptor: UIFontDescriptor = primaryDescriptor.addingAttributes([.cascadeList: descriptors])
                let combined: UIFont = UIFont(descriptor: descriptor, size: size)
                return Font(combined)
        }
        #endif
}
