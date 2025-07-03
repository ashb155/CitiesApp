import Foundation

struct City: Identifiable {
    let id = UUID()
    let name: String
    let state: String
    let imageName: String
    let description: String
}
