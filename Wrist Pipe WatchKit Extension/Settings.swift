//
//  Settings.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 1/2/20.
//  Copyright © 2020 David Freeman. All rights reserved.
//

import SwiftUI

struct Settings: View {
    @Binding var unselectedColors: Array<Color>
    @Binding var blackText: Bool
    @Binding var selectedOption: Int
    @State private var tapToSelect: Bool = false
    @State private var ignoreSilentMode: Bool = true
    @State private var togglesHaveLoaded: Bool = false
    let defaults = UserDefaults.standard
    
    func getToggles() {
        self.tapToSelect = defaults.bool(forKey: "tapToSelect")
        self.ignoreSilentMode = !defaults.bool(forKey: "respectSilentMode")
        
        self.togglesHaveLoaded = true
    }
    
    func toggleTapToSelect() -> String {
        self.defaults.set(tapToSelect, forKey: "tapToSelect")
        self.defaults.synchronize()
        return ""
    }
    
    func toggleIgnoreSilentMode() -> String {
        self.defaults.set(!ignoreSilentMode, forKey: "respectSilentMode")
        self.defaults.synchronize()
        return ""
    }
    
    var body: some View {
        ScrollView {
            Toggle(isOn: $tapToSelect) {
                Text("Tap Pitch to Select")
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                if togglesHaveLoaded {
                    Text("\(self.toggleTapToSelect())")
                }
            }.padding()
            Divider()
            Toggle(isOn: $ignoreSilentMode) {
                Text("Ignore Silent Mode")
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                if togglesHaveLoaded {
                    Text("\(self.toggleIgnoreSilentMode())")
                }
            }.padding()
            Divider()
            NavigationLink(destination: ColorPicker(unselectedColors: $unselectedColors, blackText: $blackText, selectedOption: $selectedOption)
            .navigationBarTitle(Text("Pitch Color"))) {
                HStack{
                    Image(systemName: "paintbrush")
                    Text("Pitch Color")
                }
            }.padding()
        }
        .onAppear(perform: getToggles)
    }
}
