//
//  SetListList.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 7/6/24.
//  Copyright © 2024 David Freeman. All rights reserved.
//

import SwiftUI
import TipKit

struct SetListList: View {
    @State var setLists: [SetList] = []
    let defaults = UserDefaults.standard
    
    @State var editMode: Bool = false
    
    private let renameSetListTip = RenameSetListTip()
    
    func getSetLists() {
        if let data = defaults.object(forKey: UserDefaultsKeys().setLists) as? Data,
        let items = try? JSONDecoder().decode([SetList].self, from: data) {
            self.setLists = items
        }
        
        migrateLegacySetList()
    }
    
    func migrateLegacySetList() {
        // Migrating legacy set list
        if let data = defaults.object(forKey: UserDefaultsKeys().setListPrefix) as? Data,
        let items = try? JSONDecoder().decode([Song].self, from: data) {
            if (items.count > 0) { // If there are songs in legacy set list
                let legacySetList = SetList(name: "Set List")
                setLists.append(legacySetList)
                if let encoded = try? JSONEncoder().encode(setLists) { // Create new set list
                    self.defaults.set(encoded, forKey: UserDefaultsKeys().setLists)
                    self.defaults.synchronize()
                }

                if let encoded = try? JSONEncoder().encode(items) { // Add legacy songs to new set list
                    self.defaults.set(encoded, forKey: UserDefaultsKeys().setListKey(for: legacySetList.id))
                    self.defaults.synchronize()
                }
                
                if let encoded = try? JSONEncoder().encode([Song]()) { // Remove songs from legacy set list
                    self.defaults.set(encoded, forKey: UserDefaultsKeys().setListPrefix)
                    self.defaults.synchronize()
                }
            }
        }
        // End Migrating legacy set list
    }
    
    var body: some View {
        ZStack {
            VStack {
                if(!self.setLists.isEmpty) {
                    List {
                        ForEach(self.setLists, id: \.self) { setList in
                            SetListItemView(name: setList.name, id: setList.id, editMode: $editMode)
                                .swipeActions(edge: .leading) {
                                    NavigationLink(destination: AddSetList(setLists: $setLists, id: setList.id, title: setList.name)) {
                                        Label("Rename", systemImage: "pencil")
                                    }
                                    .tint(.indigo)
                                }
                        }
                        .onDelete(perform: self.deleteRow)
                        .onMove { from, to in self.moveRow(from: from, to: to) }
                    }
                } else {
                    NavigationLink(destination: AddSetList(setLists: $setLists)) {
                        HStack{
                            Image(systemName: "plus")
                            Text("Add Set List")
                        }
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    if(!self.setLists.isEmpty && !editMode) {
                        NavigationLink(destination: AddSetList(setLists: $setLists)) {
                            HStack{
                                Image(systemName: "plus")
                                Text("Add Set List")
                            }
                        }
                        .buttonStyle(BorderedButtonStyle())
                        .padding()
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: { editMode.toggle() }, label: {
                        editMode
                        ? Image(systemName: "checkmark")
                        : Image(systemName: "arrow.up.arrow.down")
                    })
                    .contentTransition(.symbolEffect(.replace))
                    .padding()
                    .foregroundStyle(Color.white)
                    .disabled(self.setLists.count < 2)
                }
            }
            .onAppear(perform: getSetLists)
            TipView(renameSetListTip)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        }
    }
    
    private func moveRow(from: IndexSet, to: Int) {
        self.setLists.move(fromOffsets: from, toOffset: to)
        saveSetListList()
    }
    
    private func deleteRow(at indexSet: IndexSet) {
        self.setLists.remove(atOffsets: indexSet)
        saveSetListList()
    }
    
    private func saveSetListList() {
        if let encoded = try? JSONEncoder().encode(setLists) {
            self.defaults.set(encoded, forKey: UserDefaultsKeys().setLists)
            self.defaults.synchronize()
        }
    }
}

#Preview {
    NavigationView {
        SetListList(setLists: [
            SetList(name: "2024 Annual Show"),
            SetList(name: "International Set"),
            SetList(name: "International Set From Last Year")
        ])
    }
}
