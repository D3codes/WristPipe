//
//  PitchPicker.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 12/22/19.
//  Copyright © 2019 David Freeman. All rights reserved.
//

import SwiftUI
import Foundation

struct PitchPicker: View {
    @Binding var unselectedColors: Array<Color>
    @Binding var blackText: Bool
    
    let circleSize: CGFloat = 30.0
    let selectorSize: CGFloat = 80.0
    let selectedColor = Color.white
    @State private var selectedPitch = 0.0
    @State var scrollAmount = 0.0
    
    func playPitch() {
        let pitch = PitchPlayer().pitches[round(selectedPitch) == 12 ? 0 : Int(round(self.selectedPitch))]
        PitchPlayer().playPitch(selectedPitch: pitch)
    }
    
    var body: some View {
        VStack {
         HStack {
             ZStack {
                 Circle()
                     .fill(round(selectedPitch) == 11 ? selectedColor : unselectedColors[11])
                     .frame(width: circleSize, height: circleSize)
                     .offset(x: 0, y:45)
                 Text("\(PitchPlayer().pitches[11])")
                     .foregroundColor(blackText || round(selectedPitch) == 11 ? .black : .white)
                     .offset(x: 0, y: 45)
             }
             .onTapGesture {
                let tapToSelect = UserDefaults.standard.bool(forKey: UserDefaultsKeys().tapToSelect)
                if tapToSelect {
                    self.selectedPitch = 11
                }
            }
             
             ZStack {
                 Circle()
                     .fill((round(selectedPitch) == 0 || round(selectedPitch) == 12) ? selectedColor : unselectedColors[0])
                     .frame(width: circleSize, height: circleSize)
                     .offset(x: 0, y:35)
                 Text("\(PitchPlayer().pitches[0])")
                     .foregroundColor(blackText || round(selectedPitch) == 0 || round(selectedPitch) == 12 ? .black : .white)
                     .offset(x: 0, y: 35)
             }
            .onTapGesture {
                let tapToSelect = UserDefaults.standard.bool(forKey: UserDefaultsKeys().tapToSelect)
                if tapToSelect {
                    self.selectedPitch = 0
                }
            }
             
             ZStack {
                 Circle()
                     .fill(round(selectedPitch) == 1 ? selectedColor : unselectedColors[1])
                     .frame(width: circleSize, height: circleSize)
                     .offset(x: 0, y:45)
                 Text("\(PitchPlayer().pitches[1])")
                     .foregroundColor(blackText || round(selectedPitch) == 1 ? .black : .white)
                     .offset(x: 0, y: 45)
             }
            .onTapGesture {
                let tapToSelect = UserDefaults.standard.bool(forKey: UserDefaultsKeys().tapToSelect)
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
                 Text("\(PitchPlayer().pitches[10])")
                     .foregroundColor(blackText || round(selectedPitch) == 10 ? .black : .white)
                     .offset(x: -45, y: 35)
             }
            .onTapGesture {
                let tapToSelect = UserDefaults.standard.bool(forKey: UserDefaultsKeys().tapToSelect)
                if tapToSelect {
                    self.selectedPitch = 10
                }
            }
             
             ZStack {
                 Circle()
                     .fill(round(selectedPitch) == 2 ? selectedColor : unselectedColors[2])
                     .frame(width: circleSize, height: circleSize)
                     .offset(x: 45, y:35)
                 Text("\(PitchPlayer().pitches[2])")
                     .foregroundColor(blackText || round(selectedPitch) == 2 ? .black : .white)
                     .offset(x: 45, y: 35)
             }
            .onTapGesture {
                let tapToSelect = UserDefaults.standard.bool(forKey: UserDefaultsKeys().tapToSelect)
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
                 Text("\(PitchPlayer().pitches[9])")
                     .foregroundColor(blackText || round(selectedPitch) == 9 ? .black : .white)
                     .offset(x: -10, y: 10)
             }
            .onTapGesture {
                let tapToSelect = UserDefaults.standard.bool(forKey: UserDefaultsKeys().tapToSelect)
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
                 Text("\(PitchPlayer().pitches[round(selectedPitch) == 12 ? 0 : Int(round(selectedPitch))])")
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
                 Text("\(PitchPlayer().pitches[3])")
                     .foregroundColor(blackText || round(selectedPitch) == 3 ? .black : .white)
                     .offset(x: 10, y: 10)
             }
            .onTapGesture {
                let tapToSelect = UserDefaults.standard.bool(forKey: UserDefaultsKeys().tapToSelect)
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
                 Text("\(PitchPlayer().pitches[8])")
                     .foregroundColor(blackText || round(selectedPitch) == 8 ? .black : .white)
                     .offset(x: -45, y: -15)
             }
            .onTapGesture {
                let tapToSelect = UserDefaults.standard.bool(forKey: UserDefaultsKeys().tapToSelect)
                if tapToSelect {
                    self.selectedPitch = 8
                }
            }
             
             ZStack {
                 Circle()
                     .fill(round(selectedPitch) == 4 ? selectedColor : unselectedColors[4])
                     .frame(width: circleSize, height: circleSize)
                     .offset(x: 45, y: -15)
                 Text("\(PitchPlayer().pitches[4])")
                     .foregroundColor(blackText || round(selectedPitch) == 4 ? .black : .white)
                     .offset(x: 45, y: -15)
             }
            .onTapGesture {
                let tapToSelect = UserDefaults.standard.bool(forKey: UserDefaultsKeys().tapToSelect)
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
                 Text("\(PitchPlayer().pitches[7])")
                     .foregroundColor(blackText || round(selectedPitch) == 7 ? .black : .white)
                     .offset(x: 0, y: -25)
             }
            .onTapGesture {
                let tapToSelect = UserDefaults.standard.bool(forKey: UserDefaultsKeys().tapToSelect)
                if tapToSelect {
                    self.selectedPitch = 7
                }
            }
             
             ZStack {
                 Circle()
                     .fill(round(selectedPitch) == 6 ? selectedColor : unselectedColors[6])
                     .frame(width: circleSize, height: circleSize)
                     .offset(x: 0, y: -15)
                 Text("\(PitchPlayer().pitches[6])")
                     .foregroundColor(blackText || round(selectedPitch) == 6 ? .black : .white)
                     .offset(x: 0, y: -15)
             }
            .onTapGesture {
                let tapToSelect = UserDefaults.standard.bool(forKey: UserDefaultsKeys().tapToSelect)
                if tapToSelect {
                    self.selectedPitch = 6
                }
            }
             
             ZStack {
                 Circle()
                     .fill(round(selectedPitch) == 5 ? selectedColor : unselectedColors[5])
                     .frame(width: circleSize, height: circleSize)
                     .offset(x: 0, y: -25)
                 Text("\(PitchPlayer().pitches[5])")
                     .foregroundColor(blackText || round(selectedPitch) == 5 ? .black : .white)
                     .offset(x: 0, y: -25)
             }
            .onTapGesture {
                let tapToSelect = UserDefaults.standard.bool(forKey: UserDefaultsKeys().tapToSelect)
                if tapToSelect {
                    self.selectedPitch = 5
                }
            }
         }
        }
        .scaleEffect(Screen().getPitchScaling())
    }
}
