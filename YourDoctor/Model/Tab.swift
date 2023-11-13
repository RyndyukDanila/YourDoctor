import SwiftUI

enum Tab: Int, Identifiable, CaseIterable, Comparable {
    static func < (lhs: Tab, rhs: Tab) -> Bool {
        lhs.rawValue < rhs.rawValue
    }
    
    case home, calendar, message, profile
    
    internal var id: Int { rawValue }
    
    var icon: String {
        switch self {
        case .home:
            return "home"
        case .calendar:
            return "calendar-tab"
        case .message:
            return "message"
        case .profile:
            return "profile"
        }
    }
    
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .calendar:
            return "Calendar"
        case .message:
            return "Message"
        case .profile:
            return "Profile"
        }
    }
    
    var color: Color {
        return ColorTheme.Buttons.tabIcon
        
//        switch self {
//        case .home:
//            return ColorTheme.Buttons.tabIcon
//        case .calendar:
//            return ColorTheme.Buttons.tabIcon
//        case .message:
//            return ColorTheme.Buttons.tabIcon
//        case .profile:
//            return ColorTheme.Buttons.tabIcon
//        }
    }
}
