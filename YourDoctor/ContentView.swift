import SwiftUI

struct ContentView: View {
    @State var selectedTab: Tab = .home
    
    var body: some View {
        ZStack(alignment: .bottom) {
            switch selectedTab {
            case .home:
                MainScreen()
            case .calendar:
                TODOScreen()
            case .message:
                TODOScreen()
            case .profile:
                TODOScreen()
            }
            HStack(alignment: .center, spacing: 12) {
                Spacer()
                TabsLayout(selectedTab: $selectedTab)
                Spacer()
            }
            .background(Colors.Buttons.background)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
