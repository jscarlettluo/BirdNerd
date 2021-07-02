//
//  ContentView.swift
//  BirdNerd
//
//  Created by Scarlett Luo on 6/16/21.
//

import SwiftUI

struct ContentView: View {
    @State var username1: String = ""
    @State var username2: String = ""
    @State var username3: String = ""
    @State var username4: String = ""
    @EnvironmentObject var tracker: MatchTracker
    
    let lightRed = Color(red: 1, green: 0.03, blue: 0.04)
    @State private var rallyingColorL = Color(red: 0.4627, green: 0.8392, blue: 1.0)
    @State private var rallyingColorR = Color(red: 0.4627, green: 0.8392, blue: 1.0)


    
    let aWidth = UIScreen.main.bounds.width * (350/844) - 10
    let aHeight = UIScreen.main.bounds.height - 20
    let bWidth = UIScreen.main.bounds.width * (250 / 844) - 10
    let bHeight = UIScreen.main.bounds.height * (250 / 390) - 10
    let eWidth = UIScreen.main.bounds.width * (150 / 844) - 10
    let eHeight = UIScreen.main.bounds.height * (150 / 390) - 10
    
    
    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .center) {
                TextField("Enter player name 1", text: $username1)
                    .autocapitalization(UITextAutocapitalizationType.words)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .disableAutocorrection(true)
                    .frame(width: aWidth)

                
                TextField("Enter player name 2", text: $username2)
                    .autocapitalization(UITextAutocapitalizationType.words)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .disableAutocorrection(true)
                    .frame(width: aWidth)
                    
                
                Button(action: {
                    print("Left Rally")
                    if self.tracker.rightServe == false {
                        self.tracker.leftServe = true
                    }
                    self.tracker.startRally()
                    if self.tracker.leftServe {
                        rallyingColorL = Color.green
                    }
                }, label: {
                    Text("Serve/Shot").frame(width: bWidth, height: bHeight)
                })
                .background(rallyingColorL)
                .padding()
                
                Spacer()
            }.frame(width: aWidth, height: aHeight)
            .padding()
            
            VStack(alignment: .center) {
                Spacer()
                Button(action: {print("END RALLY, score not currently updated")
                    rallyingColorL = Color(red: 0.4627, green: 0.8392, blue: 1.0)
                    rallyingColorR = Color(red: 0.4627, green: 0.8392, blue: 1.0)
                    self.tracker.endRally()
                }, label: {
                    Text("END RALLY")
                        .foregroundColor(Color.black)
                        .frame(width:eWidth, height:eHeight)
                })
                .background(lightRed)
                
                HStack(alignment: .center) {
                    Text("\(self.tracker.scoreToUpdateLeft)  -  \(self.tracker.scoreToUpdateRight)")
                        .font(.headline)
                }
                Spacer()
            }.frame(width:100)
            
            VStack(alignment: .trailing) {
                TextField("Enter player name 3", text: $username3)
                    .autocapitalization(UITextAutocapitalizationType.words)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .disableAutocorrection(true)
                    .frame(width: aWidth)
                
                TextField("Enter player name 4", text: $username4)
                    .autocapitalization(UITextAutocapitalizationType.words)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .disableAutocorrection(true)
                    .frame(width: aWidth)
                
                Button(action: {print("Right Rally")
                    if self.tracker.leftServe != true {
                        self.tracker.rightServe = true
                    }
                    self.tracker.startRally()
                    if self.tracker.rightServe {
                        rallyingColorR = Color.green
                    }
                }, label: {
                    Text("Serve/Shot").frame(width: bWidth, height: bHeight)
                })
                .background(rallyingColorR)
                .padding()
                Spacer()
                
            }.frame(width: aWidth, height: aHeight)
            .padding()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 844, height: 390))
    }
}
