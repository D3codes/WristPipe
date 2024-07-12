//
//  RenameSetListTip.swift
//  Wrist Pipe
//
//  Created by David Freeman on 7/11/24.
//

import TipKit

struct RenameSetListTip: Tip {
    
    @Parameter
    static var alreadyDiscovered: Bool = false
    
    static let setListCreated = Event(id: "setList-created")
    
    var title: Text {
        Text("Swipe Right on a Set List and Tap \(Image(systemName: "pencil")) to Rename")
    }
    
    var message: Text? {
        Text("This action can also be done to songs")
    }
    
    var image: Image? {
        Image(systemName: "pencil")
    }
    
    var rules: [Rule] {
        [
          #Rule(Self.$alreadyDiscovered) { $0 == false },
          #Rule(Self.setListCreated) { $0.donations.count > 0 }
        ]
      }
}
