//
//  HoldToPlaySettings.swift
//  WristPipe2 Watch App
//
//  Created by David Freeman on 2/29/24.
//

import SwiftUI

struct HoldToPlaySettings: View {
    @AppStorage("holdToPlay") private var holdToPlay = true
    
    var body: some View {
        VStack {
            Button(action: { holdToPlay.toggle() }, label: {
                Toggle(isOn: $holdToPlay, label: {
                    Text("Hold to Play")
                })
            })
            .buttonBorderShape(.roundedRectangle)
            .padding(.bottom)
            
            Text("You can hold the center button to play a pitch. The pitch will stop playing when you release the center button.")
                .font(.footnote)
            
            Spacer()
        }
    }
}

#Preview {
    HoldToPlaySettings()
}
