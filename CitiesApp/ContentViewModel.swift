import Foundation

class CityViewModel: ObservableObject {
    @Published var cities: [City] = []
    
    init() {
        loadCities()
    }
    
    func loadCities() {
        cities = [
            City(name: "Mumbai", state: "Maharashtra", imageName: "mumbai", description: "Home to Bollywood"),
            City(name: "New Delhi", state: "Delhi", imageName: "delhi", description: "Country Capital"),
            City(name: "Bengaluru", state: "Karnataka", imageName: "bengaluru", description: "Silicon Valley of India."),
            City(name: "Chennai", state: "Tamil Nadu", imageName: "chennai", description: "Cultural Capital of South India"),
            City(name: "Kolkata", state: "West Bengal", imageName: "kolkata", description: "Kolkata was once the capital of British India."),
            City(name: "Hyderabad", state: "Telangana", imageName: "hyderabad", description: "City of Pearls")
        ]
    }
}
