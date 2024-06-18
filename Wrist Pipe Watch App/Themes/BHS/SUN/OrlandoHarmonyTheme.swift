//
//  OrlandoHarmonyTheme.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/17/24.
//

import SwiftUI

struct OrlandoHarmonyTheme: Theme {
    var id: Int = 2702
    var name: String = "Orlando Harmony"
    
    var orlandoHarmonySilver: Color = Color(red: 0.851, green: 0.859, blue: 0.871)
    var orlandoHarmonyLightBlue: Color = Color(red: 0.184, green: 0.533, blue: 0.725)
    var orlandoHarmonyDarkBlue: Color = Color(red: 0.157, green: 0.180, blue: 0.329)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(LinearGradient(colors: [orlandoHarmonyLightBlue, orlandoHarmonyDarkBlue], startPoint: .top, endPoint: .bottom))
    }
    
    var selectorColor: Color = Color(red: 0.851, green: 0.859, blue: 0.871)
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
    var pitchUnselectedOpacity: Double = 1.0

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
    
    var logo: Image? = Image("orlandoharmony_logo")
    var logoXScale: Double = 3
    var logoYScale: Double = 15
}

#Preview {
    PitchPipe(theme: OrlandoHarmonyTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(OrlandoHarmonyTheme().getBackground()))
}
