//
//  MainScreen.swift
//  YourDoctor
//
//  Created by  User on 12.11.2023.
//

import SwiftUI

struct MainScreen: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        VStack {
            GreetingHeader()
                .padding(.horizontal, 24)
//            NearestMeeting()
            Spacer()
        }
        .padding(.top, 24)
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
            .environmentObject(ModelData())
    }
}
