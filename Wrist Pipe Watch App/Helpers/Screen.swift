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
    
    // Series 0, 1, 2, 3
    let mm38 = 136.0
    let mm42 = 156.0
    
    // Series 4, 5, 6, SE
    let mm40 = 162.0
    let mm44 = 184.0
    
    // Series 7, 8, 9
    let mm41 = 176.0
    let mm45 = 198.0
    
    // Ultra, Ultra 2
    let mm49 = 205.0
    
    let pitchSize = [
        136.0 : 38.0, //38mm
        156.0 : 38.0, //42mm
        162.0 : 30.0, //40mm
        184.0 : 35.0, //44mm
        176.0 : 33.0, //41mm
        198.0 : 38.0, //45mm
        205.0 : 40.0, //49mm
    ]
    func getPitchSize() -> Double {
        return pitchSize[screenWidth]!
    }
    
    let pitchSelectorSize = [
        136.0 : 80.0, //38mm
        156.0 : 80.0, //42mm
        162.0 : 60.0, //40mm
        184.0 : 75.0, //44mm
        176.0 : 75.0, //41mm
        198.0 : 80.0, //45mm
        205.0 : 80.0, //49mm
    ]
    func getPitchSelectorSize() -> Double {
        return pitchSelectorSize[screenWidth]!
    }
    
    let pitchPointerSize = [
        136.0 : 15.0, //38mm
        156.0 : 15.0, //42mm
        162.0 : 30.0, //40mm
        184.0 : 41.0, //44mm
        176.0 : 41.0, //41mm
        198.0 : 45.0, //45mm
        205.0 : 49.0, //49mm
    ]
    func getPitchPointerSize() -> Double {
        return pitchPointerSize[screenWidth]!
    }
    
    let saveButtonOffset = [
        136.0 : 90.0,  //38mm
        156.0 : 90.0,  //42mm
        162.0 : 90.0,  //40mm
        184.0 : 100.0, //44mm
        176.0 : 100.0, //41mm
        198.0 : 110.0, //45mm
        205.0 : 110.0, //49mm
    ]
    func getSaveButtonOffset() -> Double {
        return saveButtonOffset[screenWidth]!
    }
    
    func isSeries3() -> Bool {
        return screenWidth == mm38 || screenWidth == mm42
    }
    
    func isUltra() -> Bool {
        return screenWidth == mm49
    }
}

#Preview() {
    PitchPipe(theme: BlackTheme())
}
