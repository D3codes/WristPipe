//
//  TapToSelect.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 11/13/21.
//  Copyright © 2021 David Freeman. All rights reserved.
//

import Foundation
import SwiftUI

struct TapToSelect: View {
    @State private var tapToSelect: Bool = false
    @State private var togglesHaveLoaded: Bool = false
    let defaults = UserDefaults.standard
    
    func getState() {
        self.tapToSelect = defaults.bool(forKey: UserDefaultsKeys().tapToSelect)
        self.togglesHaveLoaded = true
    }
    
    func toggleTapToSelect() -> String {
        self.defaults.set(tapToSelect, forKey: UserDefaultsKeys().tapToSelect)
        self.defaults.synchronize()
        return ""
    }
    
    var body: some View {
        VStack {
            Toggle(isOn: $tapToSelect) {
                Text("Tap Pitch to Select")
                    .font(.callout)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                if togglesHaveLoaded {
                    Text("\(self.toggleTapToSelect())")
                }
            }.padding()
            Text("You can select a pitch by tapping on it as well as using the Digital Crown.")
                .font(.caption2)
            Spacer()
        }
        .onAppear(perform: getState)
    }
}
