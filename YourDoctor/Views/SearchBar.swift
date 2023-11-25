import SwiftUI

struct SearchBar: View {
    var body: some View {
        Button(action: {}) {
            HStack(alignment: .center, spacing: 12) {
                Image(Images.Icons.search)
                Text("SearchBar.search")
                    .font(Font.custom(Fonts.poppinsRegular, size: 15))
                    .foregroundColor(Colors.Text.secondary)
                Spacer()
            }
            .padding(16)
            .background(Colors.Buttons.secondary)
            .cornerRadius(12)
            .accessibilityLabel("Searchbar for doctors or health issue")
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
