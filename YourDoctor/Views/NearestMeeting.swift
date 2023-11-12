//
//  NearestMeeting.swift
//  YourDoctor
//
//  Created by  User on 12.11.2023.
//

import SwiftUI

struct NearestMeeting: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            HStack(alignment: .center, spacing: 12) {
                modelData.doctors[modelData.meetings.first!.doctorId].image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 58, height: 58)
                    .offset(x: -2, y: 10)
                    .background(.white)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 6) {
                    Text("Dr. \(modelData.doctors[modelData.meetings.first!.doctorId].name)")
                        .font(Font.custom(Fonts.poppinsBold, size: 16))
                        .foregroundColor(ColorTheme.Text.meetingPrimary)
                    Text(modelData.doctors[modelData.meetings.first!.doctorId].profession)
                        .font(Font.custom(Fonts.poppinsRegular, size: 14))
                        .foregroundColor(ColorTheme.Text.meetingSecondary)
                }
                Spacer()
                Image("arrow-right")
            }
            Rectangle()
                .stroke(.white.opacity(0.15), lineWidth: 1)
                .frame(maxWidth: .infinity, minHeight: 0, maxHeight: 0.5)
            HStack {
                HStack {
                    Image("calendar")
                    Text(modelData.meetings.first!.date)
                        .font(Font.custom(Fonts.poppinsRegular, size: 12))
                        .foregroundColor(ColorTheme.Text.meetingPrimary)
                }
                Spacer()
                HStack {
                    Image("clock")
                    Text(modelData.meetings.first!.time)
                        .font(Font.custom(Fonts.poppinsRegular, size: 12))
                        .foregroundColor(ColorTheme.Text.meetingPrimary)
                }
            }
            
        }
        .padding(20)
        .background(ColorTheme.Buttons.primary)
        .cornerRadius(12)
    }
}

struct NearestMeeting_Previews: PreviewProvider {
    static var previews: some View {
        NearestMeeting()
            .environmentObject(ModelData())
    }
}
