import Foundation
import SwiftUI
import CoreLocation

struct User: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
