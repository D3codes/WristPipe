//
//  SetListItemView.swift
//  Wrist Pipe
//
//  Created by David Freeman on 7/6/24.
//

import SwiftUI

struct SetListItemView: View {
    var name: String
    var id: UUID
    @Binding var editMode: Bool
    
    var body: some View {
        if editMode {
            HStack {
                Text(name)
                Spacer()
                Image(systemName: "line.3.horizontal")
            }
            .contentShape(Rectangle())
        } else {
            NavigationLink(destination: SongList(setListId: id, setListName: name)) {
                HStack {
                    Text(name)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                .contentShape(Rectangle())
            }
        }
    }
}

struct SetListItemEditView: View {
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
