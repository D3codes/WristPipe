//
//  SongItemView.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/23/24.
//

import SwiftUI

struct SongItemView: View {
    var name: String
    var key: String
    
    var body: some View {
        HStack {
            Text(name)
            Spacer()
            Group {
                Divider()
                Text(key).frame(width: 25.0)
            }
        }
        .contentShape(Rectangle())
    }
}

struct SongItemEditView: View {
    var name: String
    
    var body: some View {
        HStack {
            Text(name)
            Spacer()
            Image(systemName: "line.3.horizontal")
        }
        .contentShape(Rectangle())
    }
}
