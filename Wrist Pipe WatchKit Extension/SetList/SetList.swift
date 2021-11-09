//
//  SetList.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 11/7/21.
//  Copyright © 2021 David Freeman. All rights reserved.
//

import SwiftUI

struct SetList: View {
    @State var setListItems: [SetListItem] = []
    let defaults = UserDefaults.standard
    
    func getSetList() {
        if let data = defaults.object(forKey: UserDefaultsKeys().setList) as? Data,
        let items = try? JSONDecoder().decode([SetListItem].self, from: data) {
            self.setListItems = items
        }
    }
    
    var body: some View {
        VStack {
            NavigationLink(destination: AddSong(setList: $setListItems)
            .navigationBarTitle(Text("Cancel"))) {
                HStack{
                    Image(systemName: "plus")
                    Text("Add Song")
                }
            }.buttonStyle(BorderedButtonStyle(tint: Color.blue))
            
            if(!self.setListItems.isEmpty) {
                List {
                    ForEach(self.setListItems, id: \.self) { listItem in
                        SetListItemRow(listItem: listItem)
                    }
                    .onDelete(perform: self.deleteRow)
                }
            }
            
        }.onAppear(perform: getSetList)
    }
    
    private func deleteRow(at indexSet: IndexSet) {
        self.setListItems.remove(atOffsets: indexSet)
        if let encoded = try? JSONEncoder().encode(setListItems) {
            self.defaults.set(encoded, forKey: UserDefaultsKeys().setList)
            self.defaults.synchronize()
        }
    }

    struct SetListItemRow: View {
        var listItem: SetListItem

        var body: some View {
            Button(action: {
                PitchPlayer().playPitch(selectedPitch: listItem.key)
            }) {
                Text(listItem.name)
            }
        }
    }
}
