import SwiftUI

// MARK: - Modal View
struct CityMoreInfoView: View {
    let city: City
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack(spacing: 20) {
            Text("More About \(city.name)")
                .font(.title2)
                .bold()

            Text("Placeholder")
                .multilineTextAlignment(.center)
                .padding()

            Image(systemName: "building.2.crop.circle")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)

            Button("Close") {
                dismiss()
            }
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)

            Spacer()
        }
        .padding()
    }
}
