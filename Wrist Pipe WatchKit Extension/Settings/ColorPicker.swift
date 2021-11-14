//
//  ColorPicker.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 12/22/19.
//  Copyright © 2019 David Freeman. All rights reserved.
//

import SwiftUI

struct ColorPicker: View {
    @State var selectedOption: Int = 3
    
    let circleSize: CGFloat = 43.0
    let conic = AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple]), center: .center)
    let defaults = UserDefaults.standard
    
    func getSelection() {
        if let colorName = defaults.string(forKey: UserDefaultsKeys().pitchColors) {
            self.selectedOption = PitchColor().colorNames.firstIndex(of: colorName)!
        }
    }
    
    func setColor(colorIndex: Int) {
        self.selectedOption = colorIndex
        self.defaults.set(
            PitchColor().colorNames[colorIndex],
            forKey: UserDefaultsKeys().pitchColors
        )
        self.defaults.synchronize()
    }
    
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    Circle()
                    .fill(selectedOption == 6 ? Color.white : Color.black)
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 0, y:0)
                    Circle()
                    .fill(Color.red)
                    .frame(width: circleSize-5, height: circleSize-5)
                    .offset(x: 0, y:0)
                    .onTapGesture {
                        setColor(colorIndex: 6)
                    }
                }
                ZStack {
                    Circle()
                    .fill(selectedOption == 7 ? Color.white : Color.black)
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 0, y:0)
                    Circle()
                    .fill(conic)
                    .frame(width: circleSize-5, height: circleSize-5)
                    .offset(x: 0, y:0)
                    .onTapGesture {
                        setColor(colorIndex: 7)
                    }
                }
                .offset(x: 0, y:-20)
                ZStack {
                    Circle()
                    .fill(selectedOption == 0 ? Color.white : Color.black)
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 0, y:0)
                    Circle()
                    .fill(Color.blue)
                    .frame(width: circleSize-5, height: circleSize-5)
                    .offset(x: 0, y:0)
                    .onTapGesture {
                        setColor(colorIndex: 0)
                    }
                }
            }
            HStack {
                ZStack {
                    Circle()
                    .fill(selectedOption == 5 ? Color.white : Color.black)
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: -40, y:0)
                    Circle()
                    .fill(Color.green)
                    .frame(width: circleSize-5, height: circleSize-5)
                    .offset(x: -40, y:0)
                    .onTapGesture {
                        setColor(colorIndex: 5)
                    }
                }
                ZStack {
                    Circle()
                    .fill(selectedOption == 1 ? Color.white : Color.black)
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 40, y:0)
                    Circle()
                    .fill(Color.yellow)
                    .frame(width: circleSize-5, height: circleSize-5)
                    .offset(x: 40, y:0)
                    .onTapGesture {
                        setColor(colorIndex: 1)
                    }
                }
            }
            HStack {
                ZStack {
                    Circle()
                    .fill(selectedOption == 4 ? Color.white : Color.black)
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 0, y:0)
                    Circle()
                    .fill(Color.orange)
                    .frame(width: circleSize-5, height: circleSize-5)
                    .offset(x: 0, y:0)
                    .onTapGesture {
                        setColor(colorIndex: 4)
                    }
                }
                ZStack {
                    Circle()
                    .fill(selectedOption == 3 ? Color.white : Color.gray)
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 0, y:0)
                    Circle()
                    .fill(Color.black)
                    .frame(width: circleSize-5, height: circleSize-5)
                    .offset(x: 0, y:0)
                    .onTapGesture {
                        setColor(colorIndex: 3)
                    }
                }
                .offset(x: 0, y:20)
                ZStack {
                    Circle()
                    .fill(selectedOption == 2 ? Color.white : Color.black)
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 0, y:0)
                    Circle()
                    .fill(Color.purple)
                    .frame(width: circleSize-5, height: circleSize-5)
                    .offset(x: 0, y:0)
                    .onTapGesture {
                        setColor(colorIndex: 2)
                    }
                }
            }
        }
        .onAppear(perform: getSelection)
        .offset(x: 0, y:15)
        .scaleEffect(Screen().getColorScaling())
    }
}
