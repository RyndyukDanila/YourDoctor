import SwiftUI

struct GreetingHeader: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        HStack {
            VStack (alignment: .leading) {
                Text("GreetingHeader.hello")
                    .font(Font.custom(Fonts.poppinsRegular, size: 16))
                    .foregroundColor(Colors.Text.greeting)
                Text(modelData.user.name)
                    .font(Font.custom(Fonts.poppinsBold, size: 20))
                    .foregroundColor(Colors.Text.primary)
            }
            Spacer()
            Button(action: {}) {
                modelData.user.image
            }
        }
    }
}

struct GreetingHeader_Previews: PreviewProvider {
    static var previews: some View {
        GreetingHeader()
            .environment(\.locale, .init(identifier: "en"))
            .environmentObject(ModelData())
    }
}
