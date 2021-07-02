//
//  BirdNerdApp.swift
//  BirdNerd
//
//  Created by Scarlett Luo on 6/16/21.
//

import SwiftUI

@main
struct BirdNerdApp: App {
    var tracker = MatchTracker()
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView().environmentObject(tracker)
                .tabItem {
                    Image(systemName: "timer")
                    Text("Match Timer")
                }
                SummaryView().environmentObject(tracker)
                .tabItem {
                    Image(systemName: "doc.text")
                    Text("Summary")
                }
            }
            
        }
    }
}
