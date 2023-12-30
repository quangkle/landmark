//
//  LandMarkApp.swift
//  LandMark
//
//  Created by Duy Le on 10/5/23.
//

import SwiftUI

@main
struct LandMarkApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
