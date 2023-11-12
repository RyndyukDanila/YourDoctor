import SwiftUI

struct MainScreen: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        VStack {
            GreetingHeader()
                .padding(.bottom, 32)
            NearestMeeting()
            Spacer()
        }
        .padding(.top, 24)
        .padding(.horizontal, 24)
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
            .environmentObject(ModelData())
    }
}
