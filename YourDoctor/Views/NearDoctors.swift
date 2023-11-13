//
//  NearDoctors.swift
//  YourDoctor
//
//  Created by  User on 13.11.2023.
//

import SwiftUI

struct NearDoctors: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(UIText.nearDoctor)
                .font(Font.custom(Fonts.poppinsSemiBold, size: 16))
                .foregroundColor(ColorTheme.Text.primary)
            ForEach(modelData.doctors) { doctor in
                DoctorCard(doctor: doctor)
            }
        }
    }
}

struct NearDoctors_Previews: PreviewProvider {
    static var previews: some View {
        NearDoctors()
            .environmentObject(ModelData())
    }
}
