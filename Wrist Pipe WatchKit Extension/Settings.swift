//
//  Settings.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 1/2/20.
//  Copyright © 2020 David Freeman. All rights reserved.
//

import SwiftUI

struct Settings: View {
    @State private var tapToSelect: Bool = false
    @State private var togglesHaveLoaded: Bool = false
    let defaults = UserDefaults.standard
    
    func getToggles() {
        self.tapToSelect = defaults.bool(forKey: "tapToSelect")
        
        self.togglesHaveLoaded = true
    }
    
    func toggleTapToSelect() -> String {
        self.defaults.set(tapToSelect, forKey: "tapToSelect")
        self.defaults.synchronize()
        return ""
    }
    
    var body: some View {
        VStack {
            Toggle(isOn: $tapToSelect) {
                Text("Tap Pitch to Select")
                if togglesHaveLoaded {
                    Text("\(self.toggleTapToSelect())")
                }
            }.padding()
        }
        .onAppear(perform: getToggles)
    }
}
