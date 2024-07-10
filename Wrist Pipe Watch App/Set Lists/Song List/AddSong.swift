//
//  AddSong.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 11/7/21.
//  Copyright © 2021 David Freeman. All rights reserved.
//

import SwiftUI

struct AddSong: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var setListId: UUID
    @Binding var setList: [Song]
    @State var songId: UUID?
    @State var title: String = ""
    @State var selectedPitch: Pitch = PitchPlayer().pitches[0]
    let defaults = UserDefaults.standard
    
    private func insertSong() {
        setList.append(Song(name: title, key: selectedPitch.note, fileName: selectedPitch.fileName))
        saveSongs()
    }
    
    private func updateSong() {
        let index = setList.firstIndex(where: { $0.id == songId })!
        setList.remove(at: index)
        setList.insert(Song(id: songId!, name: title, key: selectedPitch.note, fileName: selectedPitch.fileName), at: index)
        saveSongs()
    }
    
    private func saveSongs() {
        if let encoded = try? JSONEncoder().encode(setList) {
            self.defaults.set(encoded, forKey: UserDefaultsKeys().setListKey(for: setListId))
            self.defaults.synchronize()
        }
    }
    
    var body: some View {
        VStack {
            TextField("Title", text: $title)
            Spacer()
            HStack {
                Text("Key")
                Picker("Key", selection: $selectedPitch) {
                    ForEach(PitchPlayer().pitches, id: \.self.id) { pitch in
                        Text(pitch.note).tag(pitch)
                    }
                }
                .labelsHidden()
                .frame(width: 50)
            }
            .frame(height: 30)
            Spacer()
            Button(action: {
                if songId != nil {
                    updateSong()
                } else {
                    insertSong()
                }

                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text(songId != nil ? "Save Song" : "Add Song")
            }
            .padding()
            .disabled(title.trimmingCharacters(in: .whitespaces).isEmpty)
        }
        .padding(.top)
    }
}

#Preview {
    struct AddSong_Preview: View {
        @State var setList = [Song]()
        
        var body: some View {
            AddSong(setListId: UUID(), setList: $setList)
        }
    }
    
    return AddSong_Preview()
}
