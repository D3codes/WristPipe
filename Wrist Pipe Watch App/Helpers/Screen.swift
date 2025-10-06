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
    
    // 38mm
    let series0Small = 136.0
    let series1Small = 136.0
    let series2Small = 136.0
    let series3Small = 136.0
    
    // 42mm
    let series0Large = 156.0
    let series1Large = 156.0
    let series2Large = 156.0
    let series3Large = 156.0
    
    // 40mm
    let series4Small = 162.0
    let series5Small = 162.0
    let series6Small = 162.0
    let seSmall = 162.0
    let se2Small = 162.0
    let se3Small = 162.0
    
    // 44mm
    let series4Large = 184.0
    let series5Large = 184.0
    let series6Large = 184.0
    let seLarge = 184.0
    let se2Large = 184.0
    let se3Large = 184.0
    
    // 41mm
    let series7Small = 176.0
    let series8Small = 176.0
    let series9Small = 176.0
    
    // 45mm
    let series7Large = 198.0
    let series8Large = 198.0
    let series9Large = 198.0
    
    // 42mm
    let series10Small = 187.0
    let series11Small = 187.0
    
    // 46mm
    let series10Large = 208.0
    let series11Large = 208.0
    
    // 49mm
    let ultra = 205.0
    let ultra2 = 205.0
    
    // 49mm
    let ultra3 = 211.0
    
    let pitchSize = [
        136.0 : 38.0, //38mm
        156.0 : 38.0, //42mm
        162.0 : 30.0, //40mm
        184.0 : 35.0, //44mm
        176.0 : 33.0, //41mm
        198.0 : 38.0, //45mm
        205.0 : 40.0, //49mm
        187.0 : 36.0, //42mm
        208.0 : 40.0, //46mm
        211.0 : 40.0, //49mm
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
        187.0 : 80.0, //42mm
        208.0 : 80.0, //46mm
        211.0 : 80.0, //49mm
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
        187.0 : 49.0, //42mm
        208.0 : 49.0, //46mm
        211.0 : 49.0, //49mm
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
        187.0 : 100.0, //42mm
        208.0 : 110.0, //46mm
        211.0 : 110.0, //49mm
    ]
    func getSaveButtonOffset() -> Double {
        return saveButtonOffset[screenWidth]!
    }
    
    func isUltra() -> Bool {
        return screenWidth == ultra || screenWidth == ultra2 || screenWidth == ultra3
    }
}

#Preview() {
    struct BlackTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: BlueTheme(), path: $path, showSaveButton: true)
            }
        }
    }
    
    return BlackTheme_Preview()
}
