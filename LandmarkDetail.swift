//
//  Detail.swift
//  Landmarks
//
//  Created by student on 18/04/24.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                    .frame(height: 300)

            CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)

            
                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)

                    HStack {
                        Text("Joshua Tree National Park")
                        Spacer()
                        Text("California")
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

                    Divider()
                    Text("About \(landmark.name)")
                            .font(.title2)
                        Text("Descriptive text goes here.")
                }
                .padding()
            }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
