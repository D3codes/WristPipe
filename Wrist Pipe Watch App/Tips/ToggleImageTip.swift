//
//  ToggleImageTip.swift
//  Wrist Pipe
//
//  Created by David Freeman on 7/11/24.
//

import TipKit

struct ToggleImageTip: Tip {
    
    @Parameter
    static var alreadyDiscovered: Bool = false
    
    static let themeSelected = Event(id: "theme-selected")
    
    var title: Text {
        Text("Tap \(Image("custom.photo.circle")) to Toggle Center Image")
    }
    
    var message: Text? {
        Text("Some themes wont have a center image")
    }
    
    var image: Image? {
        Image("custom.photo.circle")
    }
    
    var rules: [Rule] {
        [
          #Rule(Self.$alreadyDiscovered) { $0 == false },
          #Rule(Self.themeSelected) { $0.donations.count > 0 }
        ]
      }
}
