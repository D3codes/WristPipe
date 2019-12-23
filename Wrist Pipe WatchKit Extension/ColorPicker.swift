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
    @Binding var done: Bool
    
    let circleSize: CGFloat = 50.0
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .fill(Color.red)
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 0, y:0)
                Circle()
                    .fill(Color.blue)
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 0, y:0)
            }
            HStack {
                Circle()
                    .fill(Color.green)
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 0, y:0)
                ZStack {
                    Circle()
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
                        self.done = true
                    }) {
                        Text("done")
                    }
                    .frame(width: circleSize, height: circleSize)
                    //.opacity(0.1)
                }
                Circle()
                    .fill(Color.yellow)
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 0, y:0)
            }
            HStack {
                Circle()
                    .fill(Color.orange)
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 0, y:0)
                Circle()
                    .fill(Color.purple)
                    .frame(width: circleSize, height: circleSize)
                    .offset(x: 0, y:0)
            }
        }
        .offset(x: 0, y:10)
    }
}
