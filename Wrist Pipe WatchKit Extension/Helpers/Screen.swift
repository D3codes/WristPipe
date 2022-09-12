//
//  Screen.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 11/8/21.
//  Copyright © 2021 David Freeman. All rights reserved.
//

import Foundation
import SwiftUI

class Screen {
    let screenWidth = WKInterfaceDevice.current().screenBounds.width
    
    // Series 3
    let mm38 = 136.0
    let mm42 = 156.0
    
    // Series 4, 5, 6, SE
    let mm40 = 162.0
    let mm44 = 184.0
    
    // Series 7, 8
    let mm41 = 176.0
    let mm45 = 198.0
    
    // Ultra
    let mm49 = 205.0
    
    let pitchScaling = [
        136.0 : 0.75, //38mm
        156.0 : 0.85, //42mm
        162.0 : 0.85, //40mm
        184.0 : 1.0,  //44mm
        176.0 : 0.93, //41mm
        198.0 : 1.0,  //45mm
        205.0 : 1.1,  //49mm
    ]
    
    let colorScaling = [
        136.0 : 0.70, //38mm
        156.0 : 0.80, //42mm
        162.0 : 0.85, //40mm
        184.0 : 1.0,  //44mm
        176.0 : 0.9,  //41mm
        198.0 : 1.1,  //45mm
        205.0 : 1.1,  //49mm
    ]
    
    let iconOffsets = [
        136.0 : [ "x" : -60.0, "y" : 60.0 ],  //38mm
        156.0 : [ "x" : -65.0, "y" : 75.0 ],  //42mm
        162.0 : [ "x" : -60.0, "y" : 80.0 ],  //40mm
        184.0 : [ "x" : -70.0, "y" : 90.0 ],  //44mm
        176.0 : [ "x" : -70.0, "y" : 90.0 ],  //41mm
        198.0 : [ "x" : -80.0, "y" : 100.0 ], //45mm
        205.0 : [ "x" : -80.0, "y" : 100.0 ], //49mm
    ]
    
    func getIconXOffsets() -> Double {
        return iconOffsets[screenWidth]!["x"]!
    }
    
    func getIconYOffsets() -> Double {
        return iconOffsets[screenWidth]!["y"]!
    }
    
    func getPitchScaling() -> Double {
        return pitchScaling[screenWidth]!
    }
    
    func getColorScaling() -> Double {
        return colorScaling[screenWidth]!
    }
    
    func isSeries3() -> Bool {
        return screenWidth == mm38 || screenWidth == mm42
    }
}
