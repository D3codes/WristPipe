//
//  PitchColor.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 11/13/21.
//  Copyright © 2021 David Freeman. All rights reserved.
//

import Foundation
import SwiftUI

class PitchColor {
    let colors = [Color.blue, Color.yellow, Color.purple, Color.black, Color.orange, Color.green, Color.red]
    let colorNames = ["blue", "yellow", "purple", "black", "orange", "green", "red", "multi"]
    
    var unselectedColor: Color = Color.black
    var selectedColor: Color = Color.white

    var unselectedTextColor: Color = Color.white
    var selectedTextColor: Color = Color.black
    
    let rainbowColors = [Color.red, Color.blue, Color.green, Color.yellow, Color.orange, Color.purple, Color.red, Color.blue, Color.green, Color.yellow, Color.orange, Color.purple]
    
    func create(color: Color) -> PitchColor {
        let pitchColor = PitchColor()
        
        pitchColor.unselectedColor = color
        pitchColor.selectedColor = Color.white
        pitchColor.unselectedTextColor = color == Color.black ? Color.white : Color.black
        pitchColor.selectedTextColor = Color.black
        
        return pitchColor
    }
    
    func createRainbow(index: Int) -> PitchColor {
        let pitchColor = PitchColor()
        
        pitchColor.unselectedColor = rainbowColors[index]
        pitchColor.selectedColor = Color.white
        pitchColor.unselectedTextColor = Color.black
        pitchColor.selectedTextColor = Color.black
        
        return pitchColor
    }
    
    func create(colorName: String) -> Array<PitchColor> {
        let selection = PitchColor().colorNames.firstIndex(of: colorName)!
        
        var pitches: Array<PitchColor> = []
        
        if(selection == 7) {
            for i in 0...11 {
                pitches.append(createRainbow(index: i))
            }
        }
        else {
            let color = colors[selection]
            for _ in 0...11 {
                pitches.append(create(color: color))
            }
        }
        
        return pitches
    }
}

