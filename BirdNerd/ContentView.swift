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
    
    var body: some View {
        HStack(alignment: .top) {
            VStack(spacing: 10) {
                TextField("Enter player name 1", text: $username1)
                    .autocapitalization(UITextAutocapitalizationType.words)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .disableAutocorrection(true)
                
                TextField("Enter player name 2", text: $username2)
                    .autocapitalization(UITextAutocapitalizationType.words)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .disableAutocorrection(true)
                Spacer()
                Button(action: {print("Rally")}, label: {
                    Text("Serve/Shot")
                })
            }.padding()
            VStack(spacing: 10) {
                TextField("Enter player name 3", text: $username3)
                    .autocapitalization(UITextAutocapitalizationType.words)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .disableAutocorrection(true)
                TextField("Enter player name 4", text: $username4)
                    .autocapitalization(UITextAutocapitalizationType.words)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .disableAutocorrection(true)
            }.padding()

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
