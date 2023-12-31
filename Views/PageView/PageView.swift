//
//  PageView.swift
//  LandMark
//
//  Created by Duy Le on 10/15/23.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]


    var body: some View {
        PageViewController(pages: pages)
    }
}

#Preview {
    PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
                .aspectRatio(3 / 2, contentMode: .fit)
}
