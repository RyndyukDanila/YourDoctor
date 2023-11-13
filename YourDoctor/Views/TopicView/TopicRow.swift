import SwiftUI

struct TopicRow: View {
    var body: some View {
        HStack(spacing: 13) {
            ForEach(topics) { topic in
                TopicItem(topic: topic)
            }
        }
    }
}

struct TopicRow_Previews: PreviewProvider {
    static var previews: some View {
        TopicRow()
    }
}
