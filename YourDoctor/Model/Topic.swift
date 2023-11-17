import Foundation

let topics: [Topic] = [
    Topic(imageName: "sun", label: "Covid 19"),
    Topic(imageName: "profile-add", label: "Doctor"),
    Topic(imageName: "link", label: "Medicine"),
    Topic(imageName: "hospital", label: "Hospital")
]

struct Topic: Hashable, Codable, Identifiable  {
    let imageName: String
    let label: String
    var id: String {
        label
    }
}
