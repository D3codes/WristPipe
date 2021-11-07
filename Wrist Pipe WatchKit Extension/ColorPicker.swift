//
//  ColorPicker.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 12/22/19.
//  Copyright © 2019 David Freeman. All rights reserved.
//

import SwiftUI

struct ColorPicker: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Binding var unselectedColors: Array<Color>
    @Binding var blackText: Bool
    @Binding var selectedOption: Int
    
    let screenWidth = WKInterfaceDevice.current().screenBounds.width
    let scaling = [
        136.0 : 0.70, //38mm
        156.0 : 0.80, //42mm
        162.0 : 0.85, //40mm
        184.0 : 1.0,  //44mm
        176.0 : 0.9,  //41mm
        198.0 : 1.1   //45mm
    ]
    
    let circleSize: CGFloat = 43.0
    let conic = AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple]), center: .center)
    let defaults = UserDefaults.standard
    
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
                    .onTapGesture {
                        self.blackText = true;
                        self.setColor(color: Color.red)
                        self.selectedOption = 0
                        print(screenWidth)
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
                        self.blackText = true;
                        self.unselectedColors = [Color.red, Color.blue, Color.green, Color.yellow, Color.orange, Color.purple, Color.red, Color.blue, Color.green, Color.yellow, Color.orange, Color.purple]
                        self.selectedOption = 7
                    }
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
                    .onTapGesture {
                        self.blackText = true;
                        self.setColor(color: Color.blue)
                        self.selectedOption = 1
                    }
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
                    .onTapGesture {
                        self.blackText = true;
                        self.setColor(color: Color.green)
                        self.selectedOption = 2
                    }
                }
                ZStack {
                    Button(action: {
                        var color: String = ""
                        switch(self.selectedOption) {
                            case 0:
                                color = "red"
                                break
                            case 1:
                                color = "blue"
                                break
                            case 2:
                                color = "green"
                                break
                            case 3:
                                color = "yellow"
                                break
                            case 4:
                                color = "orange"
                                break
                            case 5:
                                color = "purple"
                                break
                            case 6:
                                color = "black"
                                break
                            case 7:
                                color = "multi"
                                break
                            default:
                                break
                        }
                        
                        if(!color.isEmpty) {
                            self.defaults.set(color, forKey: "pitchColors")
                            self.defaults.synchronize()
                        }
                        
                        self.presentationMode.wrappedValue.dismiss()
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
                    .onTapGesture {
                        self.blackText = true;
                        self.setColor(color: Color.yellow)
                        self.selectedOption = 3
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
                        self.blackText = true;
                        self.setColor(color: Color.orange)
                        self.selectedOption = 4
                    }
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
                    .onTapGesture {
                        self.blackText = false;
                        self.setColor(color: Color.black)
                        self.selectedOption = 6
                    }
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
                    .onTapGesture {
                        self.blackText = true;
                        self.setColor(color: Color.purple)
                        self.selectedOption = 5
                    }
                }
            }
        }
        .offset(x: 0, y:15)
        .navigationBarBackButtonHidden(true)
        .scaleEffect(scaling[screenWidth]!)
    }
}
