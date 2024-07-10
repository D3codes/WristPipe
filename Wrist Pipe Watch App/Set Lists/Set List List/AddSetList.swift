//
//  AddSetList.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 7/6/24.
//  Copyright © 2024 David Freeman. All rights reserved.
//

import SwiftUI

struct AddSetList: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Binding var setLists: [SetList]
    @State var id: UUID?
    @State var title: String = ""
    let defaults = UserDefaults.standard
    
    private func insertSetList() {
        setLists.append(SetList(name: title))
        saveSetLists()
    }
    
    private func updateSetList() {
        let index = setLists.firstIndex(where: { $0.id == id })!
        setLists.remove(at: index)
        setLists.insert(SetList(id: id!, name: title), at: index)
        saveSetLists()
    }
    
    private func saveSetLists() {
        if let encoded = try? JSONEncoder().encode(setLists) {
            self.defaults.set(encoded, forKey: UserDefaultsKeys().setLists)
            self.defaults.synchronize()
        }
    }
    
    var body: some View {
        VStack {
            TextField("Title", text: $title)
            Spacer()
            Button(action: {
                if id != nil {
                    updateSetList()
                } else {
                    insertSetList()
                }
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text(id != nil ? "Save Set List" : "Add Set List")
            }
            .padding()
            .disabled(title.trimmingCharacters(in: .whitespaces).isEmpty)
        }
        .padding(.top)
    }
}

#Preview {
    struct AddSetList_Preview: View {
        @State var setList = [SetList]()
        
        var body: some View {
            AddSetList(setLists: $setList, id: UUID(), title: "Test")
        }
    }
    
    return AddSetList_Preview()
}
