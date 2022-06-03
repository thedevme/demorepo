import SwiftUI
import Foundation

extension Color {
    static let baseWhite = Color("anti-flash_white")
    static let baseDarkBlue = Color("medium_jungle_green")
    static let baseDarkGrey = Color("payne's_grey")
    static let baseLightBlue = Color("tiffany_blue")
    static let baseMediumGrey = Color("medium_grey")
    static let baseLightGrey = Color("light_grey")
}

extension UIColor {
    static let baseWhite = Color("anti-flash_white")
    static let baseDarkBlue = Color("medium_jungle_green")
    static let baseDarkGrey = Color("payne's_grey")
    static let baseLightBlue = Color("tiffany_blue")
    static let baseMediumGrey = Color("medium_grey")
    static let baseLightGrey = Color("light_grey")

    private static func Color(_ key: String) -> UIColor {
       if let color = UIColor(named: key, in: .main, compatibleWith: nil) {
           return color
       }

       return .black
    }
}

