import Foundation
import SwiftUI
import CoreLocation

struct Doctor: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var profession: String
    var openAt: String
    var distanceKm: String
    var rating: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
