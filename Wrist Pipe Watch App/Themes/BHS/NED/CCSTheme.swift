//
//  CCSTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 6/23/24.
//

import SwiftUI

struct CCSTheme: Theme {
    var id: Int = 2004
    var name: String = "Cape Cod Surftones"
    
    private var ccsBlue: Color = Color(red: 0.176, green: 0.275, blue: 0.588)
    private var ccsYellow: Color = Color(red: 0.973, green: 0.910, blue: 0.075)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(ccsBlue.gradient)
    }
    
    var selectorColor: Color = Color(red: 0.973, green: 0.910, blue: 0.075)
    var selectorTextColor: Color = .black
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.176, green: 0.275, blue: 0.588),
        Color(red: 0.176, green: 0.275, blue: 0.588),
        Color(red: 0.176, green: 0.275, blue: 0.588),
        Color(red: 0.176, green: 0.275, blue: 0.588),
        Color(red: 0.176, green: 0.275, blue: 0.588),
        Color(red: 0.176, green: 0.275, blue: 0.588),
        Color(red: 0.176, green: 0.275, blue: 0.588),
        Color(red: 0.176, green: 0.275, blue: 0.588),
        Color(red: 0.176, green: 0.275, blue: 0.588),
        Color(red: 0.176, green: 0.275, blue: 0.588),
        Color(red: 0.176, green: 0.275, blue: 0.588),
        Color(red: 0.176, green: 0.275, blue: 0.588)
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
    
    var logo: Image? = Image("ccs_logo")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview {
    PitchPipe(theme: CCSTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(CCSTheme().getBackground()))
}
