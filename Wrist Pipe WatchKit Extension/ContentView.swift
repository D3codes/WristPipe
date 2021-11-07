//
//  ContentView.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 12/14/19.
//  Copyright © 2019 David Freeman. All rights reserved.
//

import SwiftUI
import Foundation
import AVFoundation

struct ContentView: View {
    let defaults = UserDefaults.standard
    @State var unselectedColors = [Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black]
    @State var blackText = false
    @State var selectedColor = -1
    
    let screenWidth = WKInterfaceDevice.current().screenBounds.width
    let settingsIconOffsets = [
        136.0 : [ "x" : -60.0, "y" : 60.0 ], //38mm
        156.0 : [ "x" : -65.0, "y" : 75.0 ], //42mm
        162.0 : [ "x" : -60.0, "y" : 80.0 ], //40mm
        184.0 : [ "x" : -70.0, "y" : 90.0 ], //44mm
        176.0 : [ "x" : -70.0, "y" : 90.0 ], //41mm
        198.0 : [ "x" : -80.0, "y" : 100.0 ] //45mm
    ]
    
    
    func getColors() {
        if let color = defaults.string(forKey: "pitchColors")
        {
            var pitchColor: Color = Color.black
            var isMulti = false
            switch(color) {
                case "red":
                    pitchColor = Color.red
                    self.blackText = true
                    self.selectedColor = 0
                    break
                case "blue":
                    pitchColor = Color.blue
                    self.blackText = true
                    self.selectedColor = 1
                    break
                case "green":
                    pitchColor = Color.green
                    self.blackText = true
                    self.selectedColor = 2
                    break
                case "yellow":
                    pitchColor = Color.yellow
                    self.blackText = true
                    self.selectedColor = 3
                    break
                case "orange":
                    pitchColor = Color.orange
                    self.blackText = true
                    self.selectedColor = 4
                    break
                case "purple":
                    pitchColor = Color.purple
                    self.blackText = true
                    self.selectedColor = 5
                    break
                case "black":
                    pitchColor = Color.black
                    self.blackText = false
                    self.selectedColor = 6
                    break
                default:
                    isMulti = true
                    self.blackText = true
                    self.selectedColor = 7
                    break
            }
            
            if(isMulti) {
                self.unselectedColors = [Color.red, Color.blue, Color.green, Color.yellow, Color.orange, Color.purple, Color.red, Color.blue, Color.green, Color.yellow, Color.orange, Color.purple]
            } else {
                for i in 0...11 {
                    self.unselectedColors[i] = pitchColor
                }
            }
        }
    }
    
    var body: some View {
        ZStack{
            PitchPicker(unselectedColors: $unselectedColors, blackText: $blackText)
                .onAppear(perform: getColors)
            .navigationTitle(Text("Wrist Pipe"))
            .navigationBarTitleDisplayMode(.inline)
            NavigationLink(destination: Settings().navigationTitle(Text("Settings")).navigationBarTitleDisplayMode(.inline)) {
                Image(systemName: "gear")
            }
            .buttonStyle(PlainButtonStyle())
            .offset(
                x: settingsIconOffsets[screenWidth]!["x"]!,
                y: settingsIconOffsets[screenWidth]!["y"]!
            )
            NavigationLink(destination: ColorPicker(unselectedColors: $unselectedColors, blackText: $blackText, selectedOption: $selectedColor).navigationTitle(Text("Pitch Color")).navigationBarTitleDisplayMode(.inline)) {
                Image(systemName: "paintbrush")
            }
            .buttonStyle(PlainButtonStyle())
            .offset(
                x: -settingsIconOffsets[screenWidth]!["x"]!,
                y: settingsIconOffsets[screenWidth]!["y"]!
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
