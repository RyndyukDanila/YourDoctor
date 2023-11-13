import SwiftUI

struct TabButton: View {
    let tab: Tab
    @Binding var selectedTab: Tab
    
    var body: some View {
        Button {
            withAnimation(.easeInOut) {
                selectedTab = tab
            }
        } label: {
            HStack(spacing: 8) {
                Image(tab.icon)
                if isSelected {
                    Text(tab.title)
                        .font(Font.custom(Fonts.poppinsBold, size: 14))
                        .foregroundColor(ColorTheme.Text.tab)
                }
            }
            .padding(12)
            .background(isSelected ? ColorTheme.Buttons.tab : ColorTheme.Buttons.background)
            .cornerRadius(12)
        }
    }
    
    private var isSelected: Bool {
        selectedTab == tab
    }
}
