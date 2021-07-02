//
//  MatchTracker.swift
//  BirdNerd
//
//  Created by Scarlett Luo on 6/16/21.
//

import SwiftUI
import Foundation

class MatchTracker: ObservableObject {
    @Published var timer = Timer()
    @Published var scoreToUpdateLeft = 0
    @Published var scoreToUpdateRight = 0
    
    // Num shots to rally duration in seconds
    @Published var shotsRecorder : [Int: Int] = [:]
    var formatter: () = DateComponentsFormatter().allowedUnits = [.hour, .minute]
    
    
    // Use to update score and start/stop timer
    @Published var leftServe:Bool = false
    @Published var rightServe:Bool = false
    var endPrevRal:Bool = false
    var numShots = 0
    
    func startRally() {
        numShots += 1
        if endPrevRal {
            if leftServe {
                scoreToUpdateLeft += 1
            } else if rightServe {
                scoreToUpdateRight += 1
            }
            endPrevRal.toggle()
        }
    }
    
    func endRally() {
        storeRally()
        endPrevRal = true
        leftServe = false
        rightServe = false
        if scoreToUpdateLeft == 30 || scoreToUpdateRight == 30 {
            endGame()
        }
    }
    
    func storeRally() {
        
    }
    
    func endGame(){
        //compute all stats
    }
    
}

