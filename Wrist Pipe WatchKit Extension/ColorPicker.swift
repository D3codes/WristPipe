//
//  ColorPicker.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 12/22/19.
//  Copyright © 2019 David Freeman. All rights reserved.
//

import SwiftUI

struct ColorPicker: View {
    @Binding var unselectedColors: Array<Color>
    @Binding var blackText: Bool
    @Binding var view: String
    
    @State var selectedOption: Int = -1
    
    let circleSize: CGFloat = 43.0
    let conic = AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple]), center: .center)
    
    func setColor(color: Color) {
        for n in 0...11 {
            unselectedColors[n] = color
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    Circle()
                    .fill(selectedOption == 0 ? Color.white : Color.black)
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 0, y:0)
                    Circle()
                    .fill(Color.red)
                    .frame(width: circleSize-5, height: circleSize-5)
                    .offset(x: 0, y:0)
                    Button(action: {
                        self.blackText = true;
                        self.setColor(color: Color.red)
                        self.selectedOption = 0
                    }) {
                        Text("")
                    }
                    .frame(width: circleSize, height: circleSize)
                    .opacity(0.1)
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
                    Button(action: {
                        self.blackText = true;
                        self.unselectedColors = [Color.red, Color.blue, Color.green, Color.yellow, Color.orange, Color.purple, Color.red, Color.blue, Color.green, Color.yellow, Color.orange, Color.purple]
                        self.selectedOption = 7
                    }) {
                        Text("")
                    }
                    .frame(width: circleSize, height: circleSize)
                    .opacity(0.1)
                }
                .offset(x: 0, y:-20)
                ZStack {
                    Circle()
                    .fill(selectedOption == 1 ? Color.white : Color.black)
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 0, y:0)
                    Circle()
                    .fill(Color.blue)
                    .frame(width: circleSize-5, height: circleSize-5)
                    .offset(x: 0, y:0)
                    Button(action: {
                        self.blackText = true;
                        self.setColor(color: Color.blue)
                        self.selectedOption = 1
                    }) {
                        Text("")
                    }
                    .frame(width: circleSize, height: circleSize)
                    .opacity(0.1)
                }
            }
            HStack {
                ZStack {
                    Circle()
                    .fill(selectedOption == 2 ? Color.white : Color.black)
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 0, y:0)
                    Circle()
                    .fill(Color.green)
                    .frame(width: circleSize-5, height: circleSize-5)
                    .offset(x: 0, y:0)
                    Button(action: {
                        self.blackText = true;
                        self.setColor(color: Color.green)
                        self.selectedOption = 2
                    }) {
                        Text("")
                    }
                    .frame(width: circleSize, height: circleSize)
                    .opacity(0.1)
                }
                ZStack {
                    Button(action: {
                        self.view = "pitch"
                    }) {
                        Text("done")
                    }
                    .frame(width: 80.0, height: circleSize)
                }
                ZStack {
                    Circle()
                    .fill(selectedOption == 3 ? Color.white : Color.black)
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 0, y:0)
                    Circle()
                    .fill(Color.yellow)
                    .frame(width: circleSize-5, height: circleSize-5)
                    .offset(x: 0, y:0)
                    Button(action: {
                        self.blackText = true;
                        self.setColor(color: Color.yellow)
                        self.selectedOption = 3
                    }) {
                        Text("")
                    }
                    .frame(width: circleSize, height: circleSize)
                    .opacity(0.1)
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
                    Button(action: {
                        self.blackText = true;
                        self.setColor(color: Color.orange)
                        self.selectedOption = 4
                    }) {
                        Text("")
                    }
                    .frame(width: circleSize, height: circleSize)
                    .opacity(0.1)
                }
                ZStack {
                    Circle()
                    .fill(selectedOption == 6 ? Color.white : Color.gray)
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 0, y:0)
                    Circle()
                    .fill(Color.black)
                    .frame(width: circleSize-5, height: circleSize-5)
                    .offset(x: 0, y:0)
                    Button(action: {
                        self.blackText = false;
                        self.setColor(color: Color.black)
                        self.selectedOption = 6
                    }) {
                        Text("")
                    }
                    .frame(width: circleSize, height: circleSize)
                    .opacity(0.1)
                }
                .offset(x: 0, y:20)
                ZStack {
                    Circle()
                    .fill(selectedOption == 5 ? Color.white : Color.black)
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 0, y:0)
                    Circle()
                    .fill(Color.purple)
                    .frame(width: circleSize-5, height: circleSize-5)
                    .offset(x: 0, y:0)
                    Button(action: {
                        self.blackText = true;
                        self.setColor(color: Color.purple)
                        self.selectedOption = 5
                    }) {
                        Text("")
                    }
                    .frame(width: circleSize, height: circleSize)
                    .opacity(0.1)
                }
            }
        }
        .offset(x: 0, y:15)
    }
}
