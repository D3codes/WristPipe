//
//  PitchSelectTip.swift
//  Wrist Pipe
//
//  Created by David Freeman on 7/11/24.
//

import TipKit

struct PitchSelectTip: Tip {
    
    @Parameter
    static var alreadyDiscovered: Bool = false
    
    var title: Text {
        Text("Spin the Digital Crown to Select a Pitch")
    }
    
    var message: Text? {
        Text("You can also tap a pitch to select it")
    }
    
    var image: Image? {
        Image(systemName: "digitalcrown.arrow.counterclockwise")
    }
    
    var rules: [Rule] {
        [
          #Rule(Self.$alreadyDiscovered) { $0 == false }
        ]
      }
}
