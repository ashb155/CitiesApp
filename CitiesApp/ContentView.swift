
import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = CityViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.cities) { city in
                NavigationLink(destination: CityDetailView(city: city)) {
                    HStack {
                        Image(city.imageName)
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                        VStack(alignment: .leading) {
                            Text(city.name)
                                .font(.headline)
                            Text(city.state)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.vertical, 5)
                }
            }
            .navigationTitle("Explore Cities")
        }
    }
}

    
