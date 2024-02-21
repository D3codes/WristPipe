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
            NavigationLink(destination: Volume()) {
                HStack{
                    Image(systemName: "speaker.wave.2.fill")
                    Text("Volume")
                }
            }.padding()
            
            NavigationLink(destination: ColorPicker()) {
                HStack{
                    Image(systemName: "paintbrush.fill")
                    Text("Theme")
                }
            }.padding()
            
            NavigationLink(destination: TapToSelect()) {
                HStack{
                    Image(systemName: "hand.tap.fill")
                    Text("Tap to Select")
                }
            }.padding()
            
            NavigationLink(destination: About()) {
                HStack{
                    Image(systemName: "info.circle.fill")
                    Text("About")
                }
            }.padding()
        }
    }
}
