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
    @Binding var setList: [SetListItem]
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
                setList.append(SetListItem(name: title, key: selectedPitch.note, fileName: selectedPitch.fileName))
                if let encoded = try? JSONEncoder().encode(setList) {
                    self.defaults.set(encoded, forKey: UserDefaultsKeys().setList)
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
    @State var setList = [SetListItem]()
    return AddSong(setList: $setList)
}
