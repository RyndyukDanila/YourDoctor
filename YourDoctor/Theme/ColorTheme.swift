import SwiftUI

struct ColorTheme {
    struct Text {
        static let greeting = Color(red: 0.53, green: 0.59, blue: 0.73)
        static let primary = Color(red: 0.05, green: 0.11, blue: 0.2)
        static let secondary = Color(red: 0.53, green: 0.59, blue: 0.73)
        static let meetingPrimary = Color(.white)
        static let meetingSecondary = Color(red: 0.8, green: 0.88, blue: 1)
        static let rating = Color(red: 1, green: 0.69, blue: 0.32)
        static let time = Color(red: 0.28, green: 0.58, blue: 1)
        static let tab = Color(red: 0.39, green: 0.71, blue: 1)
    }
    struct Buttons {
        static let primary = Color(red: 0.28, green: 0.58, blue: 1)
        static let secondary = Color(red: 0.98, green: 0.98, blue: 0.98)
        static let tabIcon = Color(red: 0.39, green: 0.71, blue: 1)
        static let tab = Color(red: 0.39, green: 0.71, blue: 1).opacity(0.1)
        static let background = Color(.white)
        static let divider = Color(red: 0.96, green: 0.96, blue: 0.96)
        static let shadow = Color(red: 0.35, green: 0.46, blue: 0.65).opacity(0.04)
    }
}
