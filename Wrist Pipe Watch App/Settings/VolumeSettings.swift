//
//  VolumeSettings.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 2/29/24.
//

import SwiftUI

struct VolumeSettings: View {
    @AppStorage(UserDefaultsKeys().ignoreSilentMode) private var ignoreSilentMode = true
    
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
            //Spacer()
            VolumeView()
            Spacer()
            Divider()
            Spacer()
            Button(action: { ignoreSilentMode.toggle() }, label: {
                Toggle(isOn: $ignoreSilentMode, label: {
                    Text("Ignore Silent Mode")
                })
            })
            .buttonBorderShape(.roundedRectangle)
            Spacer()
        }
    }
}

#Preview {
    VolumeSettings()
}
