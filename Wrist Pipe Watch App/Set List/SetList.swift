//
//  SetList.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 11/7/21.
//  Copyright © 2021 David Freeman. All rights reserved.
//

import SwiftUI

struct SetList: View {
    @AppStorage(UserDefaultsKeys().holdToPlay) private var holdToPlay = true
    @State var setListItems: [SetListItem] = []
    let defaults = UserDefaults.standard
    let pitchPlayer = PitchPlayer()
    
    @State var editMode: Bool = false
    
    func getSetList() {
        if let data = defaults.object(forKey: UserDefaultsKeys().setList) as? Data,
        let items = try? JSONDecoder().decode([SetListItem].self, from: data) {
            self.setListItems = items
        }
    }
    
    var body: some View {
        VStack {
            if(!self.setListItems.isEmpty) {
                List {
                    ForEach(self.setListItems, id: \.self) { listItem in
                        if(editMode) {
                            SetListItemEditView(name: listItem.name)
                        } else {
                            SetListItemView(name: listItem.name, key: listItem.key)
                            .onLongPressGesture(minimumDuration: 15) {
                            } onPressingChanged: { inProgress in
                                if inProgress {
                                    pitchPlayer.playPitch(selectedPitch: listItem.fileName)
                                } else if holdToPlay {
                                    pitchPlayer.stopPlaying()
                                }
                            }
                        }
                    }
                    .onDelete(perform: self.deleteRow)
                    .onMove { from, to in self.moveRow(from: from, to: to) }
                }
            } else {
                NavigationLink(destination: AddSong(setList: $setListItems)) {
                    HStack{
                        Image(systemName: "plus")
                        Text("Add Song")
                    }
                }
            }
        }
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                if(!self.setListItems.isEmpty && !editMode) {
                    NavigationLink(destination: AddSong(setList: $setListItems)) {
                        HStack{
                            Image(systemName: "plus")
                            Text("Add Song")
                        }
                    }
                    .buttonStyle(BorderedButtonStyle())
                    .padding()
                }
            }
            
            if(self.setListItems.count > 1) {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: { editMode.toggle() }, label: {
                        editMode
                        ? Text(" Done ")
                        : Text("  Edit  ")
                    })
                    .padding()
                    .foregroundStyle(Color.white)
                }
            }
        }
        .onAppear(perform: getSetList)
    }
    
    private func moveRow(from: IndexSet, to: Int) {
        self.setListItems.move(fromOffsets: from, toOffset: to)
        saveSetList()
    }
    
    private func deleteRow(at indexSet: IndexSet) {
        self.setListItems.remove(atOffsets: indexSet)
        saveSetList()
    }
    
    private func saveSetList() {
        if let encoded = try? JSONEncoder().encode(setListItems) {
            self.defaults.set(encoded, forKey: UserDefaultsKeys().setList)
            self.defaults.synchronize()
        }
    }
}

#Preview {
    SetList(setListItems: [
        SetListItem(name: "Tonight", key: "G", fileName: "GNatural"),
        SetListItem(name: "Wild Irish Rose", key: "B♭", fileName: "BFlat")
    ])
}
