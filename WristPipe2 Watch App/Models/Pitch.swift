//
//  Pitch.swift
//  MusicXR
//
//  Created by David Freeman on 12/26/23.
//

import Foundation

struct Pitch: Identifiable{
    var id: Int
    var note: String
    var fileName: String
    var xOff: Double
    var yOff: Double
}
