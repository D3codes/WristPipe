//
//  PurpleTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/27/24.
//

import SwiftUI

struct PurpleTheme: Theme {
    var id: Int = 3
    var name: String = "Purple"
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.purple.gradient)
    }

    var selectorColor: Color = .white
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [.purple, .purple, .purple, .purple, .purple, .purple, .purple, .purple, .purple, .purple, .purple, .purple]

    var pitchBackgroundUnselectedColor: [Color] = [.clear, .clear, .clear, .clear, .clear, .clear, .clear, .clear, .clear, .clear, .clear, .clear]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 1.0

    var pitchBackgroundSelectedColor: [Color] = [.white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white]
    var pitchTextSelectedColor: Color = .black
    var pitchSelectedOpacity: Double = 1.0
    
    var logo: Image? = nil
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview() {
    PitchPipe(theme: PurpleTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(PurpleTheme().getBackground()))
}
