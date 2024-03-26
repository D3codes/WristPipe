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
                        HStack {
                            Text(listItem.name)
                            Spacer()
                            Group {
                                Divider()
                                Text(listItem.key).frame(width: 25.0)
                            }
                        }
                        .contentShape(Rectangle())
                        .onLongPressGesture(minimumDuration: 15) {
                        } onPressingChanged: { inProgress in
                            if inProgress {
                                pitchPlayer.playPitch(selectedPitch: listItem.fileName)
                            } else if holdToPlay {
                                pitchPlayer.stopPlaying()
                            }
                        }
                    }
                    .onDelete(perform: self.deleteRow)
                }
            }
            else {
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
                if(!self.setListItems.isEmpty) {
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
        }
        .onAppear(perform: getSetList)
    }
    
    private func deleteRow(at indexSet: IndexSet) {
        self.setListItems.remove(atOffsets: indexSet)
        if let encoded = try? JSONEncoder().encode(setListItems) {
            self.defaults.set(encoded, forKey: UserDefaultsKeys().setList)
            self.defaults.synchronize()
        }
    }
}

#Preview {
    SetList(setListItems: [
        SetListItem(name: "Tonight", key: "G", fileName: "GNatural"),
        SetListItem(name: "Tonight", key: "G", fileName: "GNatural")
    ])
}
