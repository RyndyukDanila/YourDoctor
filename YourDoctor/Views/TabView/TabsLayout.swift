import SwiftUI

struct TabsLayout: View {
    @Binding var selectedTab: Tab
    
    var body: some View {
        VStack(spacing: 0) {
            Rectangle()
                .stroke(ColorTheme.Buttons.divider, lineWidth: 1)
                .frame(maxWidth: .infinity, minHeight: 0, maxHeight: 0.5)
                .padding(.bottom, 16)
            HStack {
                ForEach(Tab.allCases) { tab in
                    TabButton(tab: tab, selectedTab: $selectedTab)
                }
            }
            .padding(.bottom, 16)
        }
    }
}
