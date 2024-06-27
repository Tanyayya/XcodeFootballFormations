import SwiftUI

struct FormationSelector: View {
    @State private var selectedFormation: String = "Formation 1"
    @State private var positions: [ImagePosition] = [
        ImagePosition(x: 50, y: 50, imageName: "circle.fill"),
        ImagePosition(x: 100, y: 100, imageName: "circle.fill"),
        ImagePosition(x: 200, y: 200, imageName: "circle.fill")
    ]
    
    var body: some View {
        NavigationView {
            
                VStack {
                    Picker("Select Formation", selection: $selectedFormation) {
                        Text("Formation 3-4-3 Diamond").tag("Formation 3-4-3 Diamond")
                        Text("Formation 3-4-3 Flat").tag("Formation 3-4-3 Flat")
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    
                    NavigationLink(destination: ContentView(positions: positions)) {
                        Text("Go to Formation")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
                .onChange(of: selectedFormation) { newFormation in
                    switch newFormation {
                    case "Formation 3-4-3 Diamond":
                        positions = [
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
                        ]
                    case "Formation 3-4-3 Flat":
                        positions = [
                            ImagePosition(x: 0.501, y: 0.94, imageName: "circle.fill"),
                                   
                                   // Defenders (3)
                                   ImagePosition(x: 0.25, y: 0.77, imageName: "circle.fill"),
                                   ImagePosition(x: 0.5, y: 0.77, imageName: "circle.fill"),
                                   ImagePosition(x: 0.75, y: 0.77, imageName: "circle.fill"),
                                   
                                   // Midfielders (4)
                            ImagePosition(x: 0.133, y: 0.52, imageName: "circle.fill"),
                            ImagePosition(x: 0.375, y: 0.52, imageName: "circle.fill"),
                                   ImagePosition(x: 0.625, y: 0.52, imageName: "circle.fill"),
                                   ImagePosition(x: 0.869, y: 0.52, imageName: "circle.fill"),
                                   
                                   // Forwards (3)
                                   ImagePosition(x: 0.33, y: 0.25, imageName: "circle.fill"),
                                   ImagePosition(x: 0.499, y: 0.25, imageName: "circle.fill"),
                                   ImagePosition(x: 0.69, y: 0.25, imageName: "circle.fill")
                        ]
                    default:
                        break
                    }
                }
            }
            .navigationTitle("Select Formation")
        }
    }


struct FormationSelector_Previews: PreviewProvider {
    static var previews: some View {
        FormationSelector()
    }
}
