//
//  HarmColTheme.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/17/24.
//

import SwiftUI

struct HarmColTheme: Theme {
    var id: Int = 2400
    var name: String = "Harmonic Collective"
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.black)
    }
    
    var selectorColor: Color = .white
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black
    ]
    
    var pitchBackgroundUnselectedColor: [Color] = [
        .clear,
        .clear,
        .clear,
        .clear,
        .clear,
        .clear,
        .clear,
        .clear,
        .clear,
        .clear,
        .clear,
        .clear
    ]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 1
    
    var pitchBackgroundSelectedColor: [Color] = [
        .white,
        .white,
        .white,
        .white,
        .white,
        .white,
        .white,
        .white,
        .white,
        .white,
        .white,
        .white
    ]
    var pitchTextSelectedColor: Color = .black
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("harmcol_logo")
    var logoXScale: Double = 10
    var logoYScale: Double = 10
}

#Preview {
    PitchPipe(theme: HarmColTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(HarmColTheme().getBackground()))
}
