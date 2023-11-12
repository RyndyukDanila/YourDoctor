//
//  HeaderGreeting.swift
//  YourDoctor
//
//  Created by  User on 12.11.2023.
//

import SwiftUI

struct GreetingHeader: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        HStack {
            VStack (alignment: .leading) {
                Text(UIText.greeting)
                    .font(Font.custom(Fonts.poppinsRegular, size: 16))
                    .foregroundColor(ColorTheme.Text.greeting)
                Text(modelData.user.name)
                    .font(Font.custom(Fonts.poppinsBold, size: 20))
                    .foregroundColor(ColorTheme.Text.primary)
            }
            Spacer()
            modelData.user.image
        }
    }
}

struct GreetingHeader_Previews: PreviewProvider {
    static var previews: some View {
        GreetingHeader()
            .environmentObject(ModelData())
    }
}
