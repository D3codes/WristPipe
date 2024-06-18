//
//  SouthernTheme.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/17/24.
//

import SwiftUI

struct SouthernTheme: Theme {
    var id: Int = 2401
    var name: String = "The Southern Tier"
    
    var southernBlue: Color = Color(red: 0.000, green: 0.255, blue: 0.494)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(southernBlue.gradient)
    }
    
    var selectorColor: Color = .white
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.000, green: 0.255, blue: 0.494),
        Color(red: 0.000, green: 0.255, blue: 0.494),
        Color(red: 0.000, green: 0.255, blue: 0.494),
        Color(red: 0.000, green: 0.255, blue: 0.494),
        Color(red: 0.000, green: 0.255, blue: 0.494),
        Color(red: 0.000, green: 0.255, blue: 0.494),
        Color(red: 0.000, green: 0.255, blue: 0.494),
        Color(red: 0.000, green: 0.255, blue: 0.494),
        Color(red: 0.000, green: 0.255, blue: 0.494),
        Color(red: 0.000, green: 0.255, blue: 0.494),
        Color(red: 0.000, green: 0.255, blue: 0.494),
        Color(red: 0.000, green: 0.255, blue: 0.494)
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
    
    var logo: Image? = Image("southern_logo")
    var logoXScale: Double = 3
    var logoYScale: Double = 3
}

#Preview {
    PitchPipe(theme: SouthernTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(SouthernTheme().getBackground()))
}
