import SwiftUI

struct TopicItem: View {
    var topic: Topic
    
    var body: some View {
        Button(action: {}) {
            VStack(spacing: 8) {
                Image(topic.imageName)
                    .frame(width: 72, height: 72)
                    .background(Colors.Buttons.secondary)
                    .clipShape(Circle())
                Text(topic.label)
                    .font(Font.custom(Fonts.poppinsRegular, size: 15))
                    .foregroundColor(Colors.Text.secondary)
            }
        }
    }
}

struct TopicItem_Previews: PreviewProvider {
    static var previews: some View {
        TopicItem(topic: Topic(imageName: Images.Icons.covid, label: "Covid 19"))
    }
}
