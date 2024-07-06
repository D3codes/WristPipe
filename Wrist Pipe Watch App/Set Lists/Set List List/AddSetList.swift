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
    @State private var title: String = ""
    let defaults = UserDefaults.standard
    
    var body: some View {
        VStack {
            TextField("Title", text: $title)
            Spacer()
            Button(action: {
                setLists.append(SetList(name: title))
                if let encoded = try? JSONEncoder().encode(setLists) {
                    self.defaults.set(encoded, forKey: UserDefaultsKeys().setLists)
                    self.defaults.synchronize()
                }
                
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("Add Set List")
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
            AddSetList(setLists: $setList)
        }
    }
    
    return AddSetList_Preview()
}
