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
    @Binding var pitchColors: Array<PitchColor>
    @Binding var tapToSelect: Bool
    
    let circleSize: CGFloat = 30.0
    let selectorSize: CGFloat = 80.0
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
                 let pitchColor = pitchColors[11]
                 Circle()
                     .fill(round(selectedPitch) == 11
                           ? pitchColor.selectedColor
                           : pitchColor.unselectedColor)
                     .frame(width: circleSize, height: circleSize)
                     .offset(x: 0, y:45)
                 Text("\(PitchPlayer().pitches[11])")
                     .foregroundColor(round(selectedPitch) == 11
                        ? pitchColor.selectedTextColor
                        : pitchColor.unselectedTextColor)
                     .offset(x: 0, y: 45)
             }
             .onTapGesture {
                if tapToSelect {
                    self.selectedPitch = 11
                }
            }
             
             ZStack {
                 let pitchColor = pitchColors[0]
                 Circle()
                     .fill((round(selectedPitch) == 0 || round(selectedPitch) == 12)
                           ? pitchColor.selectedColor
                           : pitchColor.unselectedColor)
                     .frame(width: circleSize, height: circleSize)
                     .offset(x: 0, y:35)
                 Text("\(PitchPlayer().pitches[0])")
                     .foregroundColor(round(selectedPitch) == 0 || round(selectedPitch) == 12
                          ? pitchColor.selectedTextColor
                          : pitchColor.unselectedTextColor)
                     .offset(x: 0, y: 35)
             }
            .onTapGesture {
                if tapToSelect {
                    self.selectedPitch = 0
                }
            }
             
             ZStack {
                 let pitchColor = pitchColors[1]
                 Circle()
                     .fill(round(selectedPitch) == 1
                           ? pitchColor.selectedColor
                           : pitchColor.unselectedColor)
                     .frame(width: circleSize, height: circleSize)
                     .offset(x: 0, y:45)
                 Text("\(PitchPlayer().pitches[1])")
                     .foregroundColor(round(selectedPitch) == 1
                            ? pitchColor.selectedTextColor
                            : pitchColor.unselectedTextColor)
                     .offset(x: 0, y: 45)
             }
            .onTapGesture {
                if tapToSelect {
                    self.selectedPitch = 1
                }
            }
         }
         HStack {
             ZStack {
                 let pitchColor = pitchColors[10]
                 Circle()
                     .fill(round(selectedPitch) == 10
                           ? pitchColor.selectedColor
                           : pitchColor.unselectedColor)
                     .frame(width: circleSize, height: circleSize)
                     .offset(x: -45, y:35)
                 Text("\(PitchPlayer().pitches[10])")
                     .foregroundColor(round(selectedPitch) == 10
                            ? pitchColor.selectedTextColor
                            : pitchColor.unselectedTextColor)
                     .offset(x: -45, y: 35)
             }
            .onTapGesture {
                if tapToSelect {
                    self.selectedPitch = 10
                }
            }
             
             ZStack {
                 let pitchColor = pitchColors[2]
                 Circle()
                     .fill(round(selectedPitch) == 2
                           ? pitchColor.selectedColor
                           : pitchColor.unselectedColor)
                     .frame(width: circleSize, height: circleSize)
                     .offset(x: 45, y:35)
                 Text("\(PitchPlayer().pitches[2])")
                     .foregroundColor(round(selectedPitch) == 2
                            ? pitchColor.selectedTextColor
                            : pitchColor.unselectedTextColor)
                     .offset(x: 45, y: 35)
             }
            .onTapGesture {
                if tapToSelect {
                    self.selectedPitch = 2
                }
            }
         }
         HStack {
             ZStack {
                 let pitchColor = pitchColors[9]
                 Circle()
                     .fill(round(selectedPitch) == 9
                           ? pitchColor.selectedColor
                           : pitchColor.unselectedColor)
                     .frame(width: circleSize, height: circleSize)
                     .offset(x: -10, y: 10)
                 Text("\(PitchPlayer().pitches[9])")
                     .foregroundColor(round(selectedPitch) == 9
                            ? pitchColor.selectedTextColor
                            : pitchColor.unselectedTextColor)
                     .offset(x: -10, y: 10)
             }
            .onTapGesture {
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
                         .fill(pitchColors[round(selectedPitch) == 12
                               ? 0
                               : Int(round(selectedPitch))
                            ].unselectedColor
                         )
                         .frame(width: selectorSize - 5, height: selectorSize - 5)
                         .offset(x: 0, y: 15)
                 }
                     .offset(x: 0, y: -15)
                     .rotationEffect(Angle(degrees: selectedPitch * 30))
                 Text("\(PitchPlayer().pitches[round(selectedPitch) == 12 ? 0 : Int(round(selectedPitch))])")
                     .font(.largeTitle)
                     .foregroundColor(pitchColors[0].unselectedTextColor)
             }
                 .onTapGesture {
                    self.playPitch()
                 }
                 .offset(x: 0, y: 10)
             
             ZStack {
                 let pitchColor = pitchColors[3]
                 Circle()
                     .fill(round(selectedPitch) == 3
                           ? pitchColor.selectedColor
                           : pitchColor.unselectedColor)
                     .frame(width: circleSize, height: circleSize)
                     .offset(x: 10, y: 10)
                 Text("\(PitchPlayer().pitches[3])")
                     .foregroundColor(round(selectedPitch) == 3
                            ? pitchColor.selectedTextColor
                            : pitchColor.unselectedTextColor)
                     .offset(x: 10, y: 10)
             }
            .onTapGesture {
                if tapToSelect {
                    self.selectedPitch = 3
                }
            }
         }
         HStack {
             ZStack {
                 let pitchColor = pitchColors[8]
                 Circle()
                     .fill(round(selectedPitch) == 8
                           ? pitchColor.selectedColor
                           : pitchColor.unselectedColor)
                     .frame(width: circleSize, height: circleSize)
                     .offset(x: -45, y: -15)
                 Text("\(PitchPlayer().pitches[8])")
                     .foregroundColor(round(selectedPitch) == 8
                            ? pitchColor.selectedTextColor
                            : pitchColor.unselectedTextColor)
                     .offset(x: -45, y: -15)
             }
            .onTapGesture {
                if tapToSelect {
                    self.selectedPitch = 8
                }
            }
             
             ZStack {
                 let pitchColor = pitchColors[4]
                 Circle()
                     .fill(round(selectedPitch) == 4
                           ? pitchColor.selectedColor
                           : pitchColor.unselectedColor)
                     .frame(width: circleSize, height: circleSize)
                     .offset(x: 45, y: -15)
                 Text("\(PitchPlayer().pitches[4])")
                     .foregroundColor(round(selectedPitch) == 4
                            ? pitchColor.selectedTextColor
                            : pitchColor.unselectedTextColor)
                     .offset(x: 45, y: -15)
             }
            .onTapGesture {
                if tapToSelect {
                    self.selectedPitch = 4
                }
            }
         }
         HStack {
             ZStack {
                 let pitchColor = pitchColors[7]
                 Circle()
                     .fill(round(selectedPitch) == 7
                           ? pitchColor.selectedColor
                           : pitchColor.unselectedColor)
                     .frame(width: circleSize, height: circleSize)
                     .offset(x: 0, y: -25)
                 Text("\(PitchPlayer().pitches[7])")
                     .foregroundColor(round(selectedPitch) == 7
                            ? pitchColor.selectedTextColor
                            : pitchColor.unselectedTextColor)
                     .offset(x: 0, y: -25)
             }
            .onTapGesture {
                if tapToSelect {
                    self.selectedPitch = 7
                }
            }
             
             ZStack {
                 let pitchColor = pitchColors[6]
                 Circle()
                     .fill(round(selectedPitch) == 6
                           ? pitchColor.selectedColor
                           : pitchColor.unselectedColor)
                     .frame(width: circleSize, height: circleSize)
                     .offset(x: 0, y: -15)
                 Text("\(PitchPlayer().pitches[6])")
                     .foregroundColor(round(selectedPitch) == 6
                            ? pitchColor.selectedTextColor
                            : pitchColor.unselectedTextColor)
                     .offset(x: 0, y: -15)
             }
            .onTapGesture {
                if tapToSelect {
                    self.selectedPitch = 6
                }
            }
             
             ZStack {
                 let pitchColor = pitchColors[5]
                 Circle()
                     .fill(round(selectedPitch) == 5
                           ? pitchColor.selectedColor
                           : pitchColor.unselectedColor)
                     .frame(width: circleSize, height: circleSize)
                     .offset(x: 0, y: -25)
                 Text("\(PitchPlayer().pitches[5])")
                     .foregroundColor(round(selectedPitch) == 5
                            ? pitchColor.selectedTextColor
                            : pitchColor.unselectedTextColor)
                     .offset(x: 0, y: -25)
             }
            .onTapGesture {
                if tapToSelect {
                    self.selectedPitch = 5
                }
            }
         }
        }
        .scaleEffect(Screen().getPitchScaling())
    }
}
