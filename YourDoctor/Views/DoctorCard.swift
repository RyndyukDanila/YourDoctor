//
//  DoctorCard.swift
//  YourDoctor
//
//  Created by  User on 13.11.2023.
//

import SwiftUI

struct DoctorCard: View {
    var doctor: Doctor
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            HStack(alignment: .center, spacing: 12) {
                doctor.image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 58, height: 73)
                    .offset(x: 0, y: 11)
                    .background(.clear)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 6) {
                    Text("Dr. \(doctor.name)")
                        .font(Font.custom(Fonts.poppinsBold, size: 16))
                        .foregroundColor(ColorTheme.Text.primary)
                    Text(doctor.profession)
                        .font(Font.custom(Fonts.poppinsRegular, size: 14))
                        .foregroundColor(ColorTheme.Text.secondary)
                }
                Spacer()
                Button(action: {}) {
                    HStack {
                        Image("location")
                        Text(doctor.distanceKm)
                            .font(Font.custom(Fonts.poppinsRegular, size: 14))
                            .foregroundColor(ColorTheme.Text.secondary)
                    }
                }
            }
            Rectangle()
                .stroke(ColorTheme.Buttons.divider, lineWidth: 1)
                .frame(maxWidth: .infinity, minHeight: 0, maxHeight: 0.5)
            HStack {
                HStack {
                    Label(doctor.rating, systemImage: "clock")
                        .font(Font.custom(Fonts.poppinsRegular, size: 12))
                        .foregroundColor(ColorTheme.Text.rating)
                    Spacer()
                }
                HStack {
                    Label("Open at \(doctor.openAt)", systemImage: "clock")
                        .font(Font.custom(Fonts.poppinsRegular, size: 12))
                        .foregroundColor(ColorTheme.Text.time)
                    Spacer()
                }
            }
            
        }
        .padding(.vertical, 20)
        .padding(.horizontal, 16)
        .background(ColorTheme.Buttons.background)
        .cornerRadius(12)
        .shadow(color: ColorTheme.Buttons.shadow, radius: 10, x: 2, y: 12)
    }
}

struct DoctorCard_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DoctorCard(doctor: ModelData().doctors[0])
            DoctorCard(doctor: ModelData().doctors[1])
        }
    }
}
