//
//  LandMarkRow.swift
//  LandMark
//
//  Created by Duy Le on 10/13/23.
//

import SwiftUI

struct LandMarkRow: View {
    var landMark: Landmark
    
    var body: some View {
        HStack {
            landMark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landMark.name)
            
            Spacer()
            
            if (landMark.isFavorite) {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview {
    let landmarks = ModelData().landMarks
        return Group {
            LandMarkRow(landMark: landmarks[0])
            LandMarkRow(landMark: landmarks[1])
        }
}
