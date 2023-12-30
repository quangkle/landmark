//
//  LandMarkList.swift
//  LandMark
//
//  Created by Duy Le on 10/13/23.
//

import SwiftUI

struct LandMarkList: View {
    @State private var showFavoritesOnly = true
    @EnvironmentObject var modelData: ModelData
    
    var filteredLandmarks: [Landmark] {
        modelData.landMarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { landMark in
                    NavigationLink {
                        LandMarkDetail(landMark: landMark)
                    } label: {
                        LandMarkRow(landMark: landMark)
                    }
                }
            }
            
            .navigationTitle("Land Marks")
        } detail: {
            Text("Select a Land Mark")
        }
    }
}

#Preview {
    LandMarkList()
        .environmentObject(ModelData())
}
