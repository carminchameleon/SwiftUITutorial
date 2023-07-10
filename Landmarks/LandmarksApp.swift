//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Eunji Hwang on 2023/07/04.
//

import SwiftUI

@main
struct LandmarksApp: App {
    // 앱이 실행되는 동안 딱 한번만 초기화 해주면 된다.
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
