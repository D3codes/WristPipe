//
//  SGCTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/27/24.
//

import SwiftUI

struct SGCTheme: Theme {
    var id: Int = 1700
    var name: String = "Southern Gateway Chorus"
    
    private let SGCGreen: Color = Color(red: 0.29, green: 0.62, blue: 0.31)
    private let SGCOrange: Color = Color(red: 0.87, green: 0.56, blue: 0.26)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(SGCOrange.gradient)
    }
    
    var selectorColor: Color = Color(red: 0.29, green: 0.62, blue: 0.31)
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [
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
    var pitchSelectedOpacity: Double = 0.9
    
    var logo: Image? = Image("SGC_logo")
    var logoXScale: Double = -22
    var logoYScale: Double = -22
}

#Preview {
    PitchPipe(theme: SGCTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(SGCTheme().getBackground()))
}
