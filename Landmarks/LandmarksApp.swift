//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by shenxiaohai on 2021/12/7.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
