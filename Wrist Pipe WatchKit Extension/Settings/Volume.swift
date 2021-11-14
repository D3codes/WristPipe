//
//  Volume.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 11/13/21.
//  Copyright © 2021 David Freeman. All rights reserved.
//

import Foundation
import SwiftUI

struct Volume: View {
    @State private var ignoreSilentMode: Bool = true
    @State private var togglesHaveLoaded: Bool = false
    let defaults = UserDefaults.standard
    
    func getState() {
        self.ignoreSilentMode = !defaults.bool(forKey: UserDefaultsKeys().respectSilentMode)
        self.togglesHaveLoaded = true
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
            Spacer()
            VolumeView()
            Spacer()
            Divider()
            Spacer()
            Toggle(isOn: $ignoreSilentMode) {
                Text("Ignore Silent Mode")
                    .font(.callout)
                    .lineLimit(3)
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                if togglesHaveLoaded {
                    Text("\(self.toggleIgnoreSilentMode())")
                }
            }.padding()
            Spacer()
        }
        .onAppear(perform: getState)
    }
}
