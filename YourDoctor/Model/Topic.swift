import Foundation

let topics: [Topic] = [
    Topic(imageName: Images.Icons.covid, label: "Covid 19"),
    Topic(imageName: Images.Icons.doctor, label: "Doctor"),
    Topic(imageName: Images.Icons.medicine, label: "Medicine"),
    Topic(imageName: Images.Icons.hospital, label: "Hospital")
]

struct Topic: Hashable, Codable, Identifiable  {
    let imageName: String
    let label: String
    var id: String {
        label
    }
}
