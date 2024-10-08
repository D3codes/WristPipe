//
//  SongList.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 11/7/21.
//  Copyright © 2021 David Freeman. All rights reserved.
//

import SwiftUI
import TipKit

struct SongList: View {
    @AppStorage(UserDefaultsKeys().holdToPlay) private var holdToPlay = true
    @State var setListId: UUID
    @State var setListName: String
    @State var songs: [Song] = []
    @State var selectedInstrument: Instrument = pitchPipe
    let defaults = UserDefaults.standard
    let pitchPlayer = PitchPlayer()
    
    @State var editMode: Bool = false
    
    private let reorderSongsTip = ReorderSongsTip()
    
    func getSetList() {
        if let data = defaults.object(forKey: UserDefaultsKeys().setListKey(for: setListId)) as? Data,
        let items = try? JSONDecoder().decode([Song].self, from: data) {
            self.songs = items
        }
    }
    
    func getSelectedInstrument() {
        if let data = defaults.object(forKey: UserDefaultsKeys().instrument) as? Data,
        let item = try? JSONDecoder().decode(Instrument.self, from: data) {
            self.selectedInstrument = item
        }
    }
    
    var body: some View {
        ZStack {
            VStack {
                if(!self.songs.isEmpty) {
                    List {
                        ForEach(self.songs, id: \.self) { song in
                            if(editMode) {
                                SongItemEditView(name: song.name)
                                    .swipeActions(edge: .leading) {
                                        NavigationLink(destination: AddSong(setListId: setListId, setList: $songs, songId: song.id, title: song.name, selectedPitch: pitchPlayer.pitches.first(where: { $0.note == song.key })!)) {
                                            Label("Rename", systemImage: "pencil")
                                        }
                                        .tint(.indigo)
                                    }
                            } else {
                                SongItemView(name: song.name, key: song.key)
                                    .onLongPressGesture(minimumDuration: 15) {
                                    } onPressingChanged: { inProgress in
                                        if inProgress {
                                            pitchPlayer.playPitch(selectedPitch: song.fileName, instrument: selectedInstrument.name)
                                        } else if holdToPlay {
                                            pitchPlayer.stopPlaying()
                                        }
                                    }
                                    .swipeActions(edge: .leading) {
                                        NavigationLink(destination: AddSong(setListId: setListId, setList: $songs, songId: song.id, title: song.name, selectedPitch: pitchPlayer.pitches.first(where: { $0.note == song.key })!)) {
                                            Label("Rename", systemImage: "pencil")
                                        }
                                        .tint(.indigo)
                                    }
                            }
                        }
                        .onDelete(perform: self.deleteRow)
                        .onMove { from, to in self.moveRow(from: from, to: to) }
                    }
                } else {
                    NavigationLink(destination: AddSong(setListId: setListId, setList: $songs)) {
                        HStack{
                            Image(systemName: "plus")
                            Text("Add Song")
                        }
                    }
                }
            }
            .navigationBarTitleDisplayMode(.large)
            .navigationTitle(setListName)
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    if(!self.songs.isEmpty && !editMode) {
                        NavigationLink(destination: AddSong(setListId: setListId, setList: $songs)) {
                            HStack{
                                Image(systemName: "plus")
                                Text("Add Song")
                            }
                        }
                        .buttonStyle(BorderedButtonStyle())
                        .padding()
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        editMode.toggle()
                        ReorderSongsTip.alreadyDiscovered = true
                    }, label: {
                        editMode
                        ? Image(systemName: "checkmark")
                        : Image(systemName: "arrow.up.arrow.down")
                    })
                    .contentTransition(.symbolEffect(.replace))
                    .padding()
                    .foregroundStyle(Color.white)
                    .disabled(self.songs.count < 2)
                }
            }
            .onAppear(perform: {
                getSetList()
                getSelectedInstrument()
            })
            TipView(reorderSongsTip)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        }
    }
    
    private func moveRow(from: IndexSet, to: Int) {
        self.songs.move(fromOffsets: from, toOffset: to)
        saveSetList()
    }
    
    private func deleteRow(at indexSet: IndexSet) {
        self.songs.remove(atOffsets: indexSet)
        saveSetList()
    }
    
    private func saveSetList() {
        if let encoded = try? JSONEncoder().encode(songs) {
            self.defaults.set(encoded, forKey: UserDefaultsKeys().setListKey(for: setListId))
            self.defaults.synchronize()
        }
    }
}

#Preview {
    NavigationView {
        SongList(setListId: UUID(), setListName: "Test Set List",
                 songs: [
                    Song(name: "Tonight", key: "G", fileName: "GNatural"),
                    Song(name: "Wild Irish Rose", key: "B♭", fileName: "BFlat")
                ])
    }
}
