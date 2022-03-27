//
//  BeatlyApp.swift
//  Beatly
//
//  Created by Артем Хлопцев on 27.03.2022.
//

import SwiftUI

@main
struct BeatlyApp: App {
    @State private var showLaunchView = true
    var body: some Scene {
        WindowGroup {
            ZStack {
                ContentView()
                ZStack {
                    if showLaunchView {
                        LaunchView(showLaunchView: $showLaunchView )
                            .transition(.move(edge: .leading))
                    }
                }.zIndex(2.0)
               
            }
            
        }
    }
}
