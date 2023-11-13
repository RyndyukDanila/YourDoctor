import SwiftUI

struct SearchBar: View {
    var body: some View {
        Button(action: {}) {
            HStack(alignment: .center, spacing: 12) {
                Image("search")
                Text(UIText.search)
                    .font(Font.custom(Fonts.poppinsRegular, size: 15))
                    .foregroundColor(ColorTheme.Text.secondary)
                Spacer()
            }
            .padding(16)
            .background(ColorTheme.Buttons.secondary)
            .cornerRadius(12)
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
