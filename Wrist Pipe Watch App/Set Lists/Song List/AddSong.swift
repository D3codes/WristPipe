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
    @State private var title: String = ""
    @State private var selectedPitch: Pitch = PitchPlayer().pitches[0]
    let defaults = UserDefaults.standard
    
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
                setList.append(Song(name: title, key: selectedPitch.note, fileName: selectedPitch.fileName))
                if let encoded = try? JSONEncoder().encode(setList) {
                    self.defaults.set(encoded, forKey: UserDefaultsKeys().setListKey(for: setListId))
                    self.defaults.synchronize()
                }
                
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("Add Song")
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
