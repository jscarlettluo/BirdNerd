//
//  BirdNerdApp.swift
//  BirdNerd
//
//  Created by Scarlett Luo on 6/16/21.
//

import SwiftUI

@main
struct BirdNerdApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                .tabItem {
                    Image(systemName: "timer")
                    Text("Match Timer")
                }
                SummaryView()
                .tabItem {
                    Image(systemName: "doc.text")
                    Text("Summary")
                }
            }
            
        }
    }
}
