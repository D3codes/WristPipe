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
    @State var unselectedColors = [Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black]
    @State var blackText = false
    @State var pitchView = false
    
    let screenWidth = WKInterfaceDevice.current().screenBounds.width
    let xsScale: CGFloat = 0.75
    let sScale: CGFloat = 0.85
    let mScale: CGFloat = 0.85
    let lScale: CGFloat = 1.0
    
    var body: some View {
        Group {
            if (!pitchView) {
                ColorPicker(unselectedColors: $unselectedColors, blackText: $blackText, done: $pitchView)
            } else {
                PitchPicker(unselectedColors: $unselectedColors, blackText: $blackText)
                .navigationBarTitle(Text("Wrist Pipe"))
                .scaleEffect(screenWidth == 136.0 ? xsScale : screenWidth == 156.0 ? sScale : screenWidth == 162.0 ? mScale : lScale)
                .contextMenu {
                    Button(action: {
                        self.pitchView = false
                    }) {
                        Text("Change Pitch Colors")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
