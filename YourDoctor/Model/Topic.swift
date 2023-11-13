import Foundation

let topics: [Topic] = [
    Topic(imageName: "sun", label: UIText.covid),
    Topic(imageName: "profile-add", label: UIText.doctor),
    Topic(imageName: "link", label: UIText.medicine),
    Topic(imageName: "hospital", label: UIText.hospital)
]

struct Topic: Hashable, Codable, Identifiable  {
    let imageName: String
    let label: String
    var id: String {
        label
    }
}
