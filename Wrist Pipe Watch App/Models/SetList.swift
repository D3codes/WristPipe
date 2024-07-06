//
//  SetList.swift
//  Wrist Pipe
//
//  Created by David Freeman on 7/6/24.
//

import SwiftUI

struct SetList: Identifiable, Hashable, Encodable, Decodable {
    var id = UUID()
    let name: String
}
