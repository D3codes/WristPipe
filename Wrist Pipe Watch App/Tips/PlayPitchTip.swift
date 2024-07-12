//
//  PlayPitchTip.swift
//  Wrist Pipe
//
//  Created by David Freeman on 7/11/24.
//

import TipKit

struct PlayPitchTip: Tip {
    
    @Parameter
    static var alreadyDiscovered: Bool = false
    
    static let pitchSelected = Event(id: "pitch-selected")
    
    var title: Text {
        Text("Press and Hold the Center Button to Play a Pitch")
    }
    
    var message: Text? {
        Text("You can change this to not require holding in Settings")
    }
    
    var image: Image? {
        Image(systemName: "hand.tap.fill")
    }
    
    var rules: [Rule] {
        [
          #Rule(Self.$alreadyDiscovered) { $0 == false },
          #Rule(Self.pitchSelected) { $0.donations.count > 0 }
        ]
      }
}
