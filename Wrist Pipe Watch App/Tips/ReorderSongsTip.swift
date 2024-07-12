//
//  ReorderSongsTip.swift
//  Wrist Pipe
//
//  Created by David Freeman on 7/11/24.
//

import TipKit

struct ReorderSongsTip: Tip {
    
    @Parameter
    static var alreadyDiscovered: Bool = false
    
    static let songsAdded = Event(id: "songs-added")
    
    var title: Text {
        Text("Tap \(Image(systemName: "arrow.up.arrow.down")) to Reorder Songs")
    }
    
    var message: Text? {
        Text("Tap \(Image(systemName: "checkmark")) to end reordering")
    }
    
    var image: Image? {
        Image(systemName: "arrow.up.arrow.down")
    }
    
    var rules: [Rule] {
        [
          #Rule(Self.$alreadyDiscovered) { $0 == false },
          #Rule(Self.songsAdded) { $0.donations.count > 1 }
        ]
      }
}
