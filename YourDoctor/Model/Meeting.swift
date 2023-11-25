import Foundation
import SwiftUI
import CoreLocation

struct Meeting: Hashable, Codable, Identifiable {
    var id: Int
    var userId: Int
    var doctorId: Int
    var time: String
    var date: String
}
