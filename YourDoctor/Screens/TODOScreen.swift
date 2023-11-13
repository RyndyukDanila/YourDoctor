import SwiftUI

struct TODOScreen: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 0) {
                Text("TODO")
            }
        }
        .padding(.horizontal, 24)
    }
}

struct TODOScreen_Previews: PreviewProvider {
    static var previews: some View {
        TODOScreen()
    }
}
