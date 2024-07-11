//
//  Instrument.swift
//  Wrist Pipe
//
//  Created by David Freeman on 7/10/24.
//

import SwiftUI

struct Instrument: Identifiable, Hashable, Encodable, Decodable {
    var id: Int
    let name: String
    let hasLowOctave: Bool
    let hasHighOctave: Bool
}
