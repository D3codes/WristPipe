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
    //38mm
    let xsXOffset: CGFloat = -60
    let xsYOffset: CGFloat = 65
    //42mm
    let sXOffset: CGFloat = -65
    let sYOffset: CGFloat = 75
    //40mm
    let mXOffset: CGFloat = -60
    let mYOffset: CGFloat = 80
    //44mm
    let lXOffset: CGFloat = -70
    let lYOffset: CGFloat = 90
    
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
            .navigationBarTitle(Text("Wrist Pipe"))
            NavigationLink(destination: Settings(unselectedColors: $unselectedColors, blackText: $blackText, selectedOption: $selectedColor).navigationBarTitle(Text("Settings"))) {
                Image(systemName: "gear")
            }
            .buttonStyle(PlainButtonStyle())
            .offset(
                x: screenWidth == 136.0 ? xsXOffset : screenWidth == 156.0 ? sXOffset : screenWidth == 162.0 ? mXOffset : lXOffset,
                y: screenWidth == 136.0 ? xsYOffset : screenWidth == 156.0 ? sYOffset : screenWidth == 162.0 ? mYOffset : lYOffset
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
