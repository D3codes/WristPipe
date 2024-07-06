//
//  HoldToPlaySettings.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 2/29/24.
//

import SwiftUI

struct HoldToPlaySettings: View {
    @AppStorage(UserDefaultsKeys().holdToPlay) private var holdToPlay = true
    
    var body: some View {
        VStack {
            Button(action: { holdToPlay.toggle() }, label: {
                Toggle(isOn: $holdToPlay, label: {
                    Text("Hold to Play")
                })
            })
            .buttonBorderShape(.roundedRectangle)
            .padding(.bottom)
            
            if(holdToPlay) {
                Text("You can hold the center button to play a pitch. The pitch will stop playing when you release the center button.")
                    .font(.footnote)
            } else {
                Text("You can tap the center button to play a pitch. Tap the center button again to stop playing.")
                    .font(.footnote)
            }
            
            Spacer()
        }
    }
}

#Preview {
    NavigationView {
        HoldToPlaySettings()
    }
}
