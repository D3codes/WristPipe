//
//  Song.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 11/7/21.
//  Copyright © 2021 David Freeman. All rights reserved.
//

import SwiftUI

struct Song: Identifiable, Hashable, Encodable, Decodable {
    var id = UUID()
    var name: String
    var key: String
    var fileName: String
}
