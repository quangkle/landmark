//
//  LandMarkDetail.swift
//  LandMark
//
//  Created by Duy Le on 10/13/23.
//

import SwiftUI

struct LandMarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    
    var landMark: Landmark
    
    var landmarkIndex: Int {
            modelData.landMarks.firstIndex(where: { $0.id == landMark.id })!
        }
    
    var body: some View {
        @EnvironmentObject var modelData: ModelData
        
        ScrollView {
            MapView(coordinate: landMark.locationCoordinate)
                            .frame(height: 300)
            CircleImage(image: landMark.image)
                .offset(y:-130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                HStack {
                    Text(landMark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landMarks[landmarkIndex].isFavorite)
                }
                HStack {
                    Text(landMark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landMark.state)
                        .font(.subheadline)
                }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About \(landMark.name)")
                    .font(.title2)
                Text(landMark.description)
            }
            .padding()
        }
        .navigationTitle(landMark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let modelData = ModelData()
    return LandMarkDetail(landMark: modelData.landMarks[0])
        .environmentObject(modelData)
}
