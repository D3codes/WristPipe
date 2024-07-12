//
//  OctaveSelectTip.swift
//  Wrist Pipe
//
//  Created by David Freeman on 7/11/24.
//

import TipKit

struct OctaveSelectTip: Tip {
    
    @Parameter
    static var alreadyDiscovered: Bool = false
    
    static let instrumentSelected = Event(id: "instrument-selected")
    
    var title: Text {
        Text("Tap \(Image(systemName: "music.note")) to Change Octaves")
    }
    
    var message: Text? {
        Text("Some instruments may not support all octaves")
    }
    
    var image: Image? {
        Image(systemName: "music.note")
    }
    
    var rules: [Rule] {
        [
          #Rule(Self.$alreadyDiscovered) { $0 == false },
          #Rule(Self.instrumentSelected) { $0.donations.count > 0 }
        ]
      }
}
