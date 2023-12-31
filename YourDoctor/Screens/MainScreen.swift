import SwiftUI

struct MainScreen: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 0) {
                GreetingHeader()
                    .padding(.bottom, 32)
                NearestMeeting()
                    .padding(.bottom, 20)
                SearchBar()
                    .padding(.bottom, 24)
                TopicRow()
                    .padding(.bottom, 32)
                NearDoctors()
                    .padding(.bottom, 96)
            }
        }
        .padding(.horizontal, 24)
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
            .environmentObject(ModelData())
    }
}
