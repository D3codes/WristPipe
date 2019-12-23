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
    let circleSize: CGFloat = 30.0
    let selectorSize: CGFloat = 80.0
    let selectedColor = Color.white
    let pitches = ["F", "F♯", "G", "A♭", "A", "B♭", "B", "C", "C♯", "D", "E♭", "E"]
    let pitchNames = ["FNatural", "FSharp", "GNatural", "AFlat", "ANatural", "BFlat", "BNatural", "CNatural", "CSharp", "DNatural", "EFlat", "ENaturalHigh"]
    @State var blackText = false;
    @State private var selectedPitch = 0.0
    @State var scrollAmount = 0.0
    @State var unselectedColors = [Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black]
    
    let screenWidth = WKInterfaceDevice.current().screenBounds.width
    let xsScale: CGFloat = 0.75
    let sScale: CGFloat = 0.85
    let mScale: CGFloat = 0.85
    let lScale: CGFloat = 1.0
    
    @State var pitchSound: AVAudioPlayer?
    func playPitch() {
        self.pitchSound?.stop()
        let path = Bundle.main.path(forResource: pitchNames[Int(round(self.selectedPitch))], ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
            pitchSound = try AVAudioPlayer(contentsOf: url)
            self.pitchSound?.play()
        } catch {
            print("couldn't load file :(")
        }
    }

    var body: some View {
       VStack {
        HStack {
            ZStack {
                Circle()
                    .fill(round(selectedPitch) == 11 ? selectedColor : unselectedColors[11])
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 0, y:45)
                Text("\(pitches[11])")
                    .foregroundColor(blackText || round(selectedPitch) == 11 ? .black : .white)
                    .offset(x: 0, y: 45)
            }
            
            ZStack {
                Circle()
                    .fill(round(selectedPitch) == 0 ? selectedColor : unselectedColors[0])
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 0, y:35)
                Text("\(pitches[0])")
                    .foregroundColor(blackText || round(selectedPitch) == 0 ? .black : .white)
                    .offset(x: 0, y: 35)
            }
            
            ZStack {
                Circle()
                    .fill(round(selectedPitch) == 1 ? selectedColor : unselectedColors[1])
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 0, y:45)
                Text("\(pitches[1])")
                    .foregroundColor(blackText || round(selectedPitch) == 1 ? .black : .white)
                    .offset(x: 0, y: 45)
            }
        }
        HStack {
            ZStack {
                Circle()
                    .fill(round(selectedPitch) == 10 ? selectedColor : unselectedColors[10])
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: -45, y:35)
                Text("\(pitches[10])")
                    .foregroundColor(blackText || round(selectedPitch) == 10 ? .black : .white)
                    .offset(x: -45, y: 35)
            }
            
            ZStack {
                Circle()
                    .fill(round(selectedPitch) == 2 ? selectedColor : unselectedColors[2])
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 45, y:35)
                Text("\(pitches[2])")
                    .foregroundColor(blackText || round(selectedPitch) == 2 ? .black : .white)
                    .offset(x: 45, y: 35)
            }
        }
        HStack {
            ZStack {
                Circle()
                    .fill(round(selectedPitch) == 9 ? selectedColor : unselectedColors[9])
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: -10, y: 10)
                Text("\(pitches[9])")
                    .foregroundColor(blackText || round(selectedPitch) == 9 ? .black : .white)
                    .offset(x: -10, y: 10)
            }
            
            ZStack {
                ZStack {
                    Circle()
                        .fill(Color.white)
                        .frame(width: selectorSize, height: selectorSize)
                        .offset(x: 0, y:15)
                        .focusable(true)
                        .digitalCrownRotation($selectedPitch, from: 0, through: 11.001, by: 1, sensitivity: .low, isContinuous: true, isHapticFeedbackEnabled: true)
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 45, height: 45)
                        .offset(x: 0, y: 0)
                        .rotationEffect(Angle(degrees: 45))
                    Circle()
                        .fill(unselectedColors[Int(round(selectedPitch))])
                        .frame(width: selectorSize - 5, height: selectorSize - 5)
                        .offset(x: 0, y: 15)
                }
                    .offset(x: 0, y: -15)
                    .rotationEffect(Angle(degrees: selectedPitch * 30))
                Text("\(pitches[Int(round(selectedPitch))])")
                    .font(.largeTitle)
                    .foregroundColor(blackText ? .black : .white)
                Button(action: { self.playPitch() }, label: { Text("") })
                    .frame(width: selectorSize, height: selectorSize)
                    .opacity(0.1)
            }
                .offset(x: 0, y: 10)
            
            ZStack {
                Circle()
                    .fill(round(selectedPitch) == 3 ? selectedColor : unselectedColors[3])
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 10, y: 10)
                Text("\(pitches[3])")
                    .foregroundColor(blackText || round(selectedPitch) == 3 ? .black : .white)
                    .offset(x: 10, y: 10)
            }
        }
        HStack {
            ZStack {
                Circle()
                    .fill(round(selectedPitch) == 8 ? selectedColor : unselectedColors[8])
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: -45, y: -15)
                Text("\(pitches[8])")
                    .foregroundColor(blackText || round(selectedPitch) == 8 ? .black : .white)
                    .offset(x: -45, y: -15)
            }
            
            ZStack {
                Circle()
                    .fill(round(selectedPitch) == 4 ? selectedColor : unselectedColors[4])
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 45, y: -15)
                Text("\(pitches[4])")
                    .foregroundColor(blackText || round(selectedPitch) == 4 ? .black : .white)
                    .offset(x: 45, y: -15)
            }
        }
        HStack {
            ZStack {
                Circle()
                    .fill(round(selectedPitch) == 7 ? selectedColor : unselectedColors[7])
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 0, y: -25)
                Text("\(pitches[7])")
                    .foregroundColor(blackText || round(selectedPitch) == 7 ? .black : .white)
                    .offset(x: 0, y: -25)
            }
            
            ZStack {
                Circle()
                    .fill(round(selectedPitch) == 6 ? selectedColor : unselectedColors[6])
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 0, y: -15)
                Text("\(pitches[6])")
                    .foregroundColor(blackText || round(selectedPitch) == 6 ? .black : .white)
                    .offset(x: 0, y: -15)
            }
            
            ZStack {
                Circle()
                    .fill(round(selectedPitch) == 5 ? selectedColor : unselectedColors[5])
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 0, y: -25)
                Text("\(pitches[5])")
                    .foregroundColor(blackText || round(selectedPitch) == 5 ? .black : .white)
                    .offset(x: 0, y: -25)
            }
        }
       }
        .navigationBarTitle(Text("Wrist Pipe"))
        .scaleEffect(screenWidth == 136.0 ? xsScale : screenWidth == 156.0 ? sScale : screenWidth == 162.0 ? mScale : lScale)
        .contextMenu {
            Button(action: {
                if(self.unselectedColors[0] == Color.black)
                {
                    self.blackText = true;
                    self.unselectedColors = [Color.red, Color.blue, Color.green, Color.yellow, Color.purple, Color.orange, Color.red, Color.blue, Color.green, Color.yellow, Color.purple, Color.orange]
                } else if(self.unselectedColors[0] == Color.red) {
                    self.blackText = true;
                    self.unselectedColors = [Color.blue, Color.blue, Color.blue, Color.blue, Color.blue, Color.blue, Color.blue, Color.blue, Color.blue, Color.blue, Color.blue, Color.blue]
                } else {
                    self.blackText = false;
                    self.unselectedColors = [Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black]
                }
            }) {
                Text("Change Pitch Colors")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
