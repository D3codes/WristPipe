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
    @State var view = "pitch"
    
    let screenWidth = WKInterfaceDevice.current().screenBounds.width
    let xsScale: CGFloat = 0.70 //38mm
    let sScale: CGFloat = 0.80  //42mm
    let mScale: CGFloat = 0.85  //40mm
    let lScale: CGFloat = 1.0   //44mm
    
    func getColors() {
        if let color = defaults.string(forKey: "pitchColors")
        {
            var pitchColor: Color = Color.black
            var isMulti = false
            switch(color) {
                case "red":
                    pitchColor = Color.red
                    self.blackText = true
                    break
                case "blue":
                    pitchColor = Color.blue
                    self.blackText = true
                    break
                case "green":
                    pitchColor = Color.green
                    self.blackText = true
                    break
                case "yellow":
                    pitchColor = Color.yellow
                    self.blackText = true
                    break
                case "orange":
                    pitchColor = Color.orange
                    self.blackText = true
                    break
                case "purple":
                    pitchColor = Color.purple
                    self.blackText = true
                    break
                case "black":
                    pitchColor = Color.black
                    self.blackText = false
                    break
                default:
                    isMulti = true
                    self.blackText = true
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
        Group {
            if (view == "color") {
                ColorPicker(unselectedColors: $unselectedColors, blackText: $blackText, view: $view)
                .navigationBarTitle(Text("Pitch Color"))
            } else if (view == "pitch"){
                PitchPicker(unselectedColors: $unselectedColors, blackText: $blackText)
                    .onAppear(perform: getColors)
                .navigationBarTitle(Text("Wrist Pipe"))
                .contextMenu {
                    Button(action: {
                        self.view = "color"
                    }) {
                        Text("Change Pitch Colors")
                    }
                }
            }
        }
        .scaleEffect(screenWidth == 136.0 ? xsScale : screenWidth == 156.0 ? sScale : screenWidth == 162.0 ? mScale : lScale)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
