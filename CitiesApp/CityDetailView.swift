import SwiftUI

struct CityDetailView:View{
    let city: City
    @State private var likeCount = 0
    @State private var showModal = false
    
    var body: some View{
        ScrollView{
            VStack{
                Image(city.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 250)
                    .clipped()
                    

                Text(city.name)
                    .font(.largeTitle)
                    .bold()

                Text(city.state)
                    .font(.title2)
                    .foregroundColor(.secondary)

                Text(city.description)
                    .padding()


                Text("Likes: \(likeCount)")
                    .font(.headline)

                Button("Like ") {
                    likeCount += 1
                                }
                    .padding()
                    .background(Color.pink)
                    .foregroundColor(.white)
                    .cornerRadius(10)

                Button("More Info") {
                    showModal = true
                                }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                        }
                    .padding()
                        }
                    .sheet(isPresented: $showModal) {
                    CityMoreInfoView(city: city)
                        }
                    }
                }
