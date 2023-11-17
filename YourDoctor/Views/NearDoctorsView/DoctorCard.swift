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
                        .foregroundColor(Colors.Text.primary)
                    Text(doctor.profession)
                        .font(Font.custom(Fonts.poppinsRegular, size: 14))
                        .foregroundColor(Colors.Text.secondary)
                }
                Spacer()
                Button(action: {}) {
                    HStack {
                        Image(Images.Icons.location)
                        Text(doctor.distanceKm)
                            .font(Font.custom(Fonts.poppinsRegular, size: 14))
                            .foregroundColor(Colors.Text.secondary)
                    }
                }
            }
            Rectangle()
                .stroke(Colors.Buttons.divider, lineWidth: 1)
                .frame(maxWidth: .infinity, minHeight: 0, maxHeight: 0.5)
            HStack {
                HStack {
                    Label(doctor.rating, systemImage: Images.Icons.clock)
                        .font(Font.custom(Fonts.poppinsRegular, size: 12))
                        .foregroundColor(Colors.Text.rating)
                    Spacer()
                }
                HStack {
                    Label("Open at \(doctor.openAt)", systemImage: Images.Icons.clock)
                        .font(Font.custom(Fonts.poppinsRegular, size: 12))
                        .foregroundColor(Colors.Text.time)
                    Spacer()
                }
            }
            
        }
        .padding(.vertical, 20)
        .padding(.horizontal, 16)
        .background(Colors.Buttons.background)
        .cornerRadius(12)
        .shadow(color: Colors.Buttons.shadow, radius: 10, x: 2, y: 12)
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
