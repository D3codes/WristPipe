//
//  Settings.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 1/2/20.
//  Copyright © 2020 David Freeman. All rights reserved.
//

import SwiftUI

struct Settings: View {
    @Binding var path: [Int]
    
    var body: some View {
        TabView {
            List {
                NavigationLink(destination: VolumeSettings()) {
                    HStack{
                        Image(systemName: "speaker.wave.2.fill")
                        Text("Volume")
                    }
                }.padding()
                
                NavigationLink(destination: ThemeSettings(path: $path)) {
                    HStack{
                        Image(systemName: "paintbrush.fill")
                        Text("Theme")
                    }
                }.padding()
                
                NavigationLink(destination: InstrumentSettings()) {
                    HStack{
                        Image(systemName: "pianokeys.inverse")
                        Text("Instrument")
                    }
                }.padding()
                
                NavigationLink(destination: HoldToPlaySettings()) {
                    HStack{
                        Image(systemName: "hand.tap.fill")
                        Text("Hold to Play")
                    }
                }.padding()
                
                NavigationLink(destination: About()) {
                    HStack{
                        Image(systemName: "info.circle.fill")
                        Text("About")
                    }
                }.padding()
            }
            
            Streak().frame(width: .infinity, height: .infinity)
        }
        .tabViewStyle(.verticalPage)
    }
}

#Preview {
    struct Settings_Preview: View {
        @State var path = [Int]()
        
        var body: some View {
            NavigationView {
                Settings(path: $path)
            }
        }
    }
    
    return Settings_Preview()
}
