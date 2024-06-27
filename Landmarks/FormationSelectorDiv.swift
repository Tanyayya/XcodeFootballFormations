import SwiftUI

struct FormationSelectorDiv: View {
    @State private var selectedFormation: String = "Formation 3-4-3 Diamond"
    @State private var positions: [[ImagePosition]] = []
    @State private var rowHeights: [CGFloat] = []

    var body: some View {
        NavigationView {
            VStack {
                Picker("Select Formation", selection: $selectedFormation) {
                    Text("Formation 3-4-3 Diamond").tag("Formation 3-4-3 Diamond")
                    Text("Formation 3-4-3 Flat").tag("Formation 3-4-3 Flat")
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                NavigationLink(destination: ContentViewdiv(positions: positions, rowHeights: rowHeights)) {
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
                    ]
                    rowHeights = [0.1, 0.2, 0.4, 0.3]
                case "Formation 3-4-3 Flat":
                    positions = [
                        [ImagePosition(x: 0.5, y: 0.5, imageName: "circle.fill")],
                        
                        // Defenders row
                        [
                            ImagePosition(x: 0.25, y: 0.65, imageName: "circle.fill"),
                            ImagePosition(x: 0.165, y: 0.65, imageName: "circle.fill"),
                            ImagePosition(x: 0.05, y: 0.65, imageName: "circle.fill")
                        ],
                        
                        // Midfielders row
                        [
                            ImagePosition(x: 0.14, y: 0.42, imageName: "circle.fill"),
                            ImagePosition(x: 0.05, y: 0.42, imageName: "circle.fill"),
                            ImagePosition(x: 0.19, y: 0.42, imageName: "circle.fill"),
                            ImagePosition(x: 0.1, y: 0.42, imageName: "circle.fill")
                        ],
                        
                        // Forwards row
                        [
                            ImagePosition(x: 0.25, y: 0.15, imageName: "circle.fill"),
                            ImagePosition(x: 0.165, y: 0.15, imageName: "circle.fill"),
                            ImagePosition(x: 0.05, y: 0.15, imageName: "circle.fill")
                        ]
                    ]
                    
                rowHeights = [0.1, 0.2, 0.4, 0.3]
                default:
                    break
                }
            }
            .onAppear {
                selectedFormation = "Formation 3-4-3 Diamond"
                positions = [
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
                ]
                rowHeights = [0.1, 0.2, 0.4, 0.3]
            }
        }
    }
}

struct FormationSelectorDiv_Previews: PreviewProvider {
    static var previews: some View {
        FormationSelectorDiv()
    }
}
