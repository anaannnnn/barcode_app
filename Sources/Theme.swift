
import SwiftUI

struct AppTheme {
    struct Colors {
        static let background = Color("Background") // fallback if not overridden
        static let card = Color(hex: "#1E1E1E")
        static let highlight = Color(hex: "#FFCC00") // bright yellow
        static let textPrimary = Color.white
        static let textSecondary = Color.gray
        static let accent = Color(hex: "#00C2FF") // cool blue
        static let error = Color.red
    }

    struct Fonts {
        static let title = Font.system(size: 24, weight: .bold)
        static let subtitle = Font.system(size: 18, weight: .semibold)
        static let body = Font.system(size: 16)
        static let caption = Font.system(size: 14)
    }
}

// Optional: Custom color initializer
extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var hexNumber: UInt64 = 0
        if hex.hasPrefix("#") { scanner.currentIndex = hex.index(after: hex.startIndex) }
        scanner.scanHexInt64(&hexNumber)
        let r = Double((hexNumber & 0xff0000) >> 16) / 255
        let g = Double((hexNumber & 0x00ff00) >> 8) / 255
        let b = Double(hexNumber & 0x0000ff) / 255
        self.init(red: r, green: g, blue: b)
    }
}
