import SwiftUI

struct ImagePositionDiv {
    let x: CGFloat
    let y: CGFloat
    let imageName: String
}

struct ContentViewdiv: View {
    let positions: [[ImagePosition]] // Nested array to represent rows
    let rowHeights: [CGFloat] // Array of heights for each row as a proportion of screen height

    var body: some View {
        ZStack {
            Image("field")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 0) { // Remove spacing between rows
                ForEach(positions.indices, id: \.self) { rowIndex in
                    HStack {
                        ForEach(positions[rowIndex], id: \.x) { position in
                            Image(systemName: position.imageName)
                                .resizable()
                                .frame(width: 30.0, height: 30)
                                .foregroundColor(.red)
                                .position(x: position.x * UIScreen.main.bounds.width,
                                          y: position.y * UIScreen.main.bounds.height * rowHeights[rowIndex])
                        }
                    }
                    .frame(height: UIScreen.main.bounds.height * rowHeights[rowIndex]) // Set height of each row
                }
            }
        }
    }
}

struct ContentViewdiv_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewdiv(
            positions: [
                // Goalkeeper row
                [ImagePosition(x: 0.5, y: 0.9, imageName: "circle.fill")],
                
                // Defenders row
                [
                    ImagePosition(x: 0.25, y: 0.75, imageName: "circle.fill"),
                    ImagePosition(x: 0.165, y: 0.65, imageName: "circle.fill"),
                    ImagePosition(x: 0.05, y: 0.75, imageName: "circle.fill")
                ],
                
                // Midfielders row
                [
                    ImagePosition(x: 0.25, y: 0.42, imageName: "circle.fill"),
                    ImagePosition(x: 0.251, y: 0.2, imageName: "circle.fill"),
                    ImagePosition(x: 0, y: 0.75, imageName: "circle.fill"),
                    ImagePosition(x: 0.01, y: 0.42, imageName: "circle.fill")
                ],
                
                // Forwards row
                [
                    ImagePosition(x: 0.25, y: 0.05, imageName: "circle.fill"),
                    ImagePosition(x: 0.165, y: 0.15, imageName: "circle.fill"),
                    ImagePosition(x: 0.05, y: 0.05, imageName: "circle.fill")
                ]
            ],
            rowHeights: [0.1, 0.2, 0.4, 0.3] // Heights for each row as a proportion of the screen height
        )
    }
}
