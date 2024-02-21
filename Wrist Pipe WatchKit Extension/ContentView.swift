//
//  ContentView.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 12/14/19.
//  Copyright © 2019 David Freeman. All rights reserved.
//

import SwiftUI
import Foundation
import AVFoundation

struct ContentView: View {
    @State var pitchColors: Array<PitchColor> = [PitchColor().create(color: Color.black), PitchColor().create(color: Color.black), PitchColor().create(color: Color.black), PitchColor().create(color: Color.black), PitchColor().create(color: Color.black), PitchColor().create(color: Color.black), PitchColor().create(color: Color.black), PitchColor().create(color: Color.black), PitchColor().create(color: Color.black), PitchColor().create(color: Color.black), PitchColor().create(color: Color.black), PitchColor().create(color: Color.black)]
    @State var tapToSelect = false
    let defaults = UserDefaults.standard
    
    func getColors() {
        self.tapToSelect = defaults.bool(forKey: UserDefaultsKeys().tapToSelect)
        
        if let color = defaults.string(forKey: UserDefaultsKeys().pitchColors) {
            self.pitchColors = PitchColor().create(colorName: color)
        }
    }
    
    var body: some View {
        ZStack{
            PitchPicker(pitchColors: $pitchColors, tapToSelect: $tapToSelect)
            .onAppear(perform: getColors)
            .toolbar {
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button {} label: {}
                }
            }
            
            NavigationLink(destination: Settings()
            ) {
                Image(systemName: "gear")
            }
            .buttonStyle(PlainButtonStyle())
            .offset(
                x: Screen().getIconXOffsets(),
                y: Screen().getIconYOffsets()
            )
            
            NavigationLink(destination: SetList()
            ) {
                Image(systemName: "music.note.list")
            }
            .buttonStyle(PlainButtonStyle())
            .offset(
                x: -Screen().getIconXOffsets(),
                y: Screen().getIconYOffsets()
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
