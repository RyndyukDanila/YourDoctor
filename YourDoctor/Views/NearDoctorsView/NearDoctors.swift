import SwiftUI

struct NearDoctors: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("NearDoctors.title")
                .font(Font.custom(Fonts.poppinsSemiBold, size: 16))
                .foregroundColor(Colors.Text.primary)
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
