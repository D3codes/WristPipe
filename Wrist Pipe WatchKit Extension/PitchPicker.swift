//
//  PitchPicker.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 12/22/19.
//  Copyright © 2019 David Freeman. All rights reserved.
//

import SwiftUI
import Foundation
import AVFoundation

struct PitchPicker: View {
    @Binding var unselectedColors: Array<Color>
    @Binding var blackText: Bool
    
    let circleSize: CGFloat = 30.0
    let selectorSize: CGFloat = 80.0
    let selectedColor = Color.white
    let pitches = ["F", "F♯", "G", "A♭", "A", "B♭", "B", "C", "C♯", "D", "E♭", "E"]
    let pitchNames = ["FNatural", "FSharp", "GNatural", "AFlat", "ANatural", "BFlat", "BNatural", "CNatural", "CSharp", "DNatural", "EFlat", "ENaturalHigh"]
    @State private var selectedPitch = 0.0
    @State var scrollAmount = 0.0
    
    let screenWidth = WKInterfaceDevice.current().screenBounds.width
    let xsScale: CGFloat = 0.75 //38mm
    let sScale: CGFloat = 0.85  //42mm
    let mScale: CGFloat = 0.85  //40mm
    let lScale: CGFloat = 1.0   //44mm
    
    @State var pitchSound: AVAudioPlayer?
    func playPitch() {
        self.pitchSound?.stop()
        let path = Bundle.main.path(forResource: pitchNames[round(selectedPitch) == 12 ? 0 : Int(round(self.selectedPitch))], ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        do {
            let ignoreSilentMode = !UserDefaults.standard.bool(forKey: "respectSilentMode")
            if ignoreSilentMode {
                try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
            } else {
                try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.ambient)
            }
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
             .onTapGesture {
                let tapToSelect = UserDefaults.standard.bool(forKey: "tapToSelect")
                if tapToSelect {
                    self.selectedPitch = 11
                }
            }
             
             ZStack {
                 Circle()
                     .fill((round(selectedPitch) == 0 || round(selectedPitch) == 12) ? selectedColor : unselectedColors[0])
                     .frame(width: circleSize, height: circleSize)
                     .offset(x: 0, y:35)
                 Text("\(pitches[0])")
                     .foregroundColor(blackText || round(selectedPitch) == 0 || round(selectedPitch) == 12 ? .black : .white)
                     .offset(x: 0, y: 35)
             }
            .onTapGesture {
                let tapToSelect = UserDefaults.standard.bool(forKey: "tapToSelect")
                if tapToSelect {
                    self.selectedPitch = 0
                }
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
            .onTapGesture {
                let tapToSelect = UserDefaults.standard.bool(forKey: "tapToSelect")
                if tapToSelect {
                    self.selectedPitch = 1
                }
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
            .onTapGesture {
                let tapToSelect = UserDefaults.standard.bool(forKey: "tapToSelect")
                if tapToSelect {
                    self.selectedPitch = 10
                }
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
            .onTapGesture {
                let tapToSelect = UserDefaults.standard.bool(forKey: "tapToSelect")
                if tapToSelect {
                    self.selectedPitch = 2
                }
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
            .onTapGesture {
                let tapToSelect = UserDefaults.standard.bool(forKey: "tapToSelect")
                if tapToSelect {
                    self.selectedPitch = 9
                }
            }
             
             ZStack {
                 ZStack {
                     Circle()
                         .fill(Color.white)
                         .frame(width: selectorSize, height: selectorSize)
                         .offset(x: 0, y:15)
                         .focusable(true)
                         .digitalCrownRotation($selectedPitch, from: 0, through: 12.001, by: 1, sensitivity: .low, isContinuous: true, isHapticFeedbackEnabled: true)
                     Rectangle()
                         .fill(Color.white)
                         .frame(width: 45, height: 45)
                         .offset(x: 0, y: 0)
                         .rotationEffect(Angle(degrees: 45))
                     Circle()
                        .fill(unselectedColors[round(selectedPitch) == 12 ? 0 : Int(round(selectedPitch))])
                         .frame(width: selectorSize - 5, height: selectorSize - 5)
                         .offset(x: 0, y: 15)
                 }
                     .offset(x: 0, y: -15)
                     .rotationEffect(Angle(degrees: selectedPitch * 30))
                 Text("\(pitches[round(selectedPitch) == 12 ? 0 : Int(round(selectedPitch))])")
                     .font(.largeTitle)
                     .foregroundColor(blackText ? .black : .white)
             }
                 .onTapGesture {
                    self.playPitch()
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
            .onTapGesture {
                let tapToSelect = UserDefaults.standard.bool(forKey: "tapToSelect")
                if tapToSelect {
                    self.selectedPitch = 3
                }
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
            .onTapGesture {
                let tapToSelect = UserDefaults.standard.bool(forKey: "tapToSelect")
                if tapToSelect {
                    self.selectedPitch = 8
                }
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
            .onTapGesture {
                let tapToSelect = UserDefaults.standard.bool(forKey: "tapToSelect")
                if tapToSelect {
                    self.selectedPitch = 4
                }
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
            .onTapGesture {
                let tapToSelect = UserDefaults.standard.bool(forKey: "tapToSelect")
                if tapToSelect {
                    self.selectedPitch = 7
                }
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
            .onTapGesture {
                let tapToSelect = UserDefaults.standard.bool(forKey: "tapToSelect")
                if tapToSelect {
                    self.selectedPitch = 6
                }
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
            .onTapGesture {
                let tapToSelect = UserDefaults.standard.bool(forKey: "tapToSelect")
                if tapToSelect {
                    self.selectedPitch = 5
                }
            }
         }
        }
        .scaleEffect(screenWidth == 136.0 ? xsScale : screenWidth == 156.0 ? sScale : screenWidth == 162.0 ? mScale : lScale)
    }
}
