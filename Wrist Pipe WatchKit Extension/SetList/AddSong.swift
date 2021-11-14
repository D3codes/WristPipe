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
    @State private var selectedPitch: String = PitchPlayer().pitches[0]
    let defaults = UserDefaults.standard
    
    var body: some View {
        VStack {
            TextField("Title", text: $title)
            Spacer()
            Picker("Key", selection: $selectedPitch) {
                ForEach(PitchPlayer().pitches, id: \.self) {
                    Text($0)
                }
            }
            Spacer()
            Button(action: {
                setList.append(SetListItem(name: title, key: selectedPitch))
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
    }
}
