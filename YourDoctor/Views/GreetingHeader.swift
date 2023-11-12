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
                    .font(Font.custom("Poppins", size: 16))
                    .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
                Text(modelData.user.name)
                    .font(
                        Font.custom("Poppins", size: 20)
                            .weight(.bold)
                    )
                    .foregroundColor(Color(red: 0.05, green: 0.11, blue: 0.2))
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
