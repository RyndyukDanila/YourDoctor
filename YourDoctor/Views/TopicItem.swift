import SwiftUI

struct TopicItem: View {
    var topic: Topic
    
    var body: some View {
        Button(action: {}) {
            VStack(spacing: 8) {
                Image(topic.imageName)
                    .frame(width: 72, height: 72)
                    .background(ColorTheme.Buttons.secondary)
                    .clipShape(Circle())
                Text(topic.label)
                    .font(Font.custom(Fonts.poppinsRegular, size: 15))
                    .foregroundColor(ColorTheme.Text.secondary)
            }
        }
    }
}

struct TopicItem_Previews: PreviewProvider {
    static var previews: some View {
        TopicItem(topic: Topic(imageName: "sun", label: UIText.covid))
    }
}
