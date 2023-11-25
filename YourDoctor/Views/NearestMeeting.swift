import SwiftUI

struct NearestMeeting: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            HStack(alignment: .center, spacing: 12) {
                modelData.doctors[modelData.meetings.first!.doctorId].image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 58, height: 73)
                    .offset(x: -2, y: 10)
                    .background(.white)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 6) {
                    Text("Dr. \(modelData.doctors[modelData.meetings.first!.doctorId].name)")
                        .font(Font.custom(Fonts.poppinsBold, size: 16))
                        .foregroundColor(Colors.Text.meetingPrimary)
                    Text(modelData.doctors[modelData.meetings.first!.doctorId].profession)
                        .font(Font.custom(Fonts.poppinsRegular, size: 14))
                        .foregroundColor(Colors.Text.meetingSecondary)
                }
                Spacer()
                Button(action: {}) {
                    Image(Images.Icons.arrowRight)
                }
            }
            Rectangle()
                .stroke(.white.opacity(0.15), lineWidth: 1)
                .frame(maxWidth: .infinity, minHeight: 0, maxHeight: 0.5)
            HStack {
                HStack {
                    Label(modelData.meetings.first!.date, systemImage: Images.Icons.calendar)
                        .font(Font.custom(Fonts.poppinsRegular, size: 12))
                        .foregroundColor(Colors.Text.meetingPrimary)
                    Spacer()
                }
                HStack {
                    Label(modelData.meetings.first!.time, systemImage: Images.Icons.clock)
                        .font(Font.custom(Fonts.poppinsRegular, size: 12))
                        .foregroundColor(Colors.Text.meetingPrimary)
                    Spacer()
                }
            }
        }
        .padding(20)
        .background(Colors.Buttons.primary)
        .cornerRadius(12)
        .accessibilityLabel("Nearest Meeting with doctor")
    }
}

struct NearestMeeting_Previews: PreviewProvider {
    static var previews: some View {
        NearestMeeting()
            .environmentObject(ModelData())
    }
}
