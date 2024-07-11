//
//  UserDefaultsKeys.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/26/24.
//

import Foundation

struct UserDefaultsKeys {
    let setLists = "setListList"
    
    let setListPrefix = "setList"
    public func setListKey(for id: UUID) -> String {
        return "\(setListPrefix)-\(id.uuidString)"
    }
    
    let holdToPlay = "holdToPlay"
    
    let theme = "theme"
    
    let showImage = "showImage"
    
    let ignoreSilentMode = "ignoreSilentMode"
    
    let instrument = "instrument"
    
    let octave = "octave"
}

