import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kMontserratRomanBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratRomanBold, size: size)
    }

    static func kMontserratRomanMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratRomanMedium, size: size)
    }

    static func kMontserratRomanRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratRomanRegular, size: size)
    }

    static func kMontserratItalicThin(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratItalicThin, size: size)
    }

    static func kPoppinsBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsBold, size: size)
    }

    static func kPoppinsLight(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsLight, size: size)
    }

    static func kPoppinsMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsMedium, size: size)
    }

    static func kDMSansMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kDMSansMedium, size: size)
    }

    static func kDMSansRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kDMSansRegular, size: size)
    }

    static func kDMSansBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kDMSansBold, size: size)
    }

    static func kSourceSansProRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSourceSansProRegular, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kMontserratRomanBold":
            result = self.kMontserratRomanBold(size: size)
        case "kMontserratRomanMedium":
            result = self.kMontserratRomanMedium(size: size)
        case "kMontserratRomanRegular":
            result = self.kMontserratRomanRegular(size: size)
        case "kMontserratItalicThin":
            result = self.kMontserratItalicThin(size: size)
        case "kPoppinsBold":
            result = self.kPoppinsBold(size: size)
        case "kPoppinsLight":
            result = self.kPoppinsLight(size: size)
        case "kPoppinsMedium":
            result = self.kPoppinsMedium(size: size)
        case "kDMSansMedium":
            result = self.kDMSansMedium(size: size)
        case "kDMSansRegular":
            result = self.kDMSansRegular(size: size)
        case "kDMSansBold":
            result = self.kDMSansBold(size: size)
        case "kSourceSansProRegular":
            result = self.kSourceSansProRegular(size: size)
        default:
            result = self.kMontserratRomanBold(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratRomanBold: String = "MontserratRoman-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratRomanMedium: String = "MontserratRoman-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratRomanRegular: String = "MontserratRoman-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratItalicThin: String = "MontserratItalic-Thin"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsBold: String = "Poppins-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsLight: String = "Poppins-Light"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsMedium: String = "Poppins-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kDMSansMedium: String = "DMSans-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kDMSansRegular: String = "DMSans-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kDMSansBold: String = "DMSans-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kSourceSansProRegular: String = "SourceSansPro-Regular"
    }
}
