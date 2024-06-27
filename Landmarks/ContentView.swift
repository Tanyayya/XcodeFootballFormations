import SwiftUI

struct ImagePosition {
    let x: CGFloat
    let y: CGFloat
    let imageName: String
}

struct ContentView: View {
    let positions: [ImagePosition]

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                           Image("field")  // Use the name of your image set here
                               .resizable()
                              
                               .edgesIgnoringSafeArea(.all)
                           
                           ForEach(positions, id: \.x) { position in
                               Image(systemName: position.imageName)
                                   .resizable()
                                   .frame(width: 30.0, height: 30)
                                   .foregroundColor(.red) // Set color to red
                                   .position(x: position.x * geometry.size.width,
                                             y: position.y * geometry.size.height)
                           }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(positions: [
            ImagePosition(x: 0.501, y: 0.94, imageName: "circle.fill"),
                   
                   // Defenders (3)
                   ImagePosition(x: 0.25, y: 0.77, imageName: "circle.fill"),
                   ImagePosition(x: 0.503, y: 0.66, imageName: "circle.fill"),
                   ImagePosition(x: 0.75, y: 0.77, imageName: "circle.fill"),
                   
                   // Midfielders (4)
            ImagePosition(x: 0.133, y: 0.5, imageName: "circle.fill"),
            ImagePosition(x: 0.375, y: 0.49, imageName: "circle.fill"),
            ImagePosition(x: 0.625, y: 0.49, imageName: "circle.fill"),
                   ImagePosition(x: 0.869, y: 0.5, imageName: "circle.fill"),
                   
                   // Forwards (3)
                   ImagePosition(x: 0.32, y: 0.25, imageName: "circle.fill"),
                   ImagePosition(x: 0.502, y: 0.3, imageName: "circle.fill"),
                   ImagePosition(x: 0.69, y: 0.25, imageName: "circle.fill")
        ])
    }
}
