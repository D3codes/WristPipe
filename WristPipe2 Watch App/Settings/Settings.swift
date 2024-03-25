//
//  Settings.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 1/2/20.
//  Copyright © 2020 David Freeman. All rights reserved.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        List {
            NavigationLink(destination: VolumeSettings()) {
                HStack{
                    Image(systemName: "speaker.wave.2.fill")
                    Text("Volume")
                }
            }.padding()
            
            NavigationLink(destination: ThemeSettings()) {
                HStack{
                    Image(systemName: "paintbrush.fill")
                    Text("Theme")
                }
            }.padding()
            
            NavigationLink(destination: HoldToPlaySettings()) {
                HStack{
                    Image(systemName: "hand.tap.fill")
                    Text("Hold to Play")
                }
            }.padding()
            
            NavigationLink(destination: Settings()) {
                HStack{
                    Image(systemName: "hand.tap.fill")
                    Text("Instrument")
                }
            }.padding()
            
            NavigationLink(destination: Settings()) {
                HStack{
                    Image(systemName: "info.circle.fill")
                    Text("About")
                }
            }.padding()
        }
    }
}

#Preview {
    Settings()
}
