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
        self.tapToSelect = defaults.bool(forKey: UserDefaultsKeys().tapToSelect)
        self.ignoreSilentMode = !defaults.bool(forKey: UserDefaultsKeys().respectSilentMode)
        
        self.togglesHaveLoaded = true
    }
    
    func toggleTapToSelect() -> String {
        self.defaults.set(tapToSelect, forKey: UserDefaultsKeys().tapToSelect)
        self.defaults.synchronize()
        return ""
    }
    
    func toggleIgnoreSilentMode() -> String {
        self.defaults.set(!ignoreSilentMode, forKey: UserDefaultsKeys().respectSilentMode)
        self.defaults.synchronize()
        return ""
    }
    
    struct VolumeView: WKInterfaceObjectRepresentable {
        typealias WKInterfaceObjectType = WKInterfaceVolumeControl

        func makeWKInterfaceObject(context: Self.Context) -> WKInterfaceVolumeControl {
            let view = WKInterfaceVolumeControl(origin: .local)
            return view
        }
        func updateWKInterfaceObject(_ wkInterfaceObject: WKInterfaceVolumeControl, context: WKInterfaceObjectRepresentableContext<VolumeView>) {
        }
    }
    
    var body: some View {
        VStack {
            if(!Screen().isSeries3()) {
                Spacer(minLength: 30)
            }
            HStack {
                VolumeView()
                Spacer()
                NavigationLink(destination: ColorPicker(unselectedColors: $unselectedColors, blackText: $blackText, selectedOption: $selectedOption)
                .navigationBarTitle(Text("Pitch Color"))) {
                    HStack{
                        Image(systemName: "paintbrush")
                    }
                }.padding()
            }
            Toggle(isOn: $tapToSelect) {
                Text("Tap Pitch to Select")
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                if togglesHaveLoaded {
                    Text("\(self.toggleTapToSelect())")
                }
            }.padding()
            Toggle(isOn: $ignoreSilentMode) {
                Text("Ignore Silent Mode")
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                if togglesHaveLoaded {
                    Text("\(self.toggleIgnoreSilentMode())")
                }
            }.padding()
        }
        .onAppear(perform: getToggles)
    }
}
