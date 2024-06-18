//
//  FogCityTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/27/24.
//

import SwiftUI

struct FogCityTheme: Theme {
    var id: Int = 1501
    var name: String = "Fog City Singers"
    
    private let fogCityBlue: Color = Color(red: 0.2, green: 0.43, blue: 0.83)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(LinearGradient(gradient: Gradient(colors: [fogCityBlue, .white]), startPoint: .top, endPoint: .bottom))
    }
    
    var selectorColor: Color = .white
    var selectorTextColor: Color = .black
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.2, green: 0.43, blue: 0.83),
        Color(red: 0.2, green: 0.43, blue: 0.83),
        Color(red: 0.2, green: 0.43, blue: 0.83),
        Color(red: 0.2, green: 0.43, blue: 0.83),
        Color(red: 0.2, green: 0.43, blue: 0.83),
        Color(red: 0.2, green: 0.43, blue: 0.83),
        Color(red: 0.2, green: 0.43, blue: 0.83),
        Color(red: 0.2, green: 0.43, blue: 0.83),
        Color(red: 0.2, green: 0.43, blue: 0.83),
        Color(red: 0.2, green: 0.43, blue: 0.83),
        Color(red: 0.2, green: 0.43, blue: 0.83),
        Color(red: 0.2, green: 0.43, blue: 0.83)
    ]
    
    var pitchBackgroundUnselectedColor: [Color] = [
        Color(red: 0.2, green: 0.43, blue: 0.83),
        Color(red: 0.2, green: 0.43, blue: 0.83),
        Color(red: 0.2, green: 0.43, blue: 0.83),
        Color(red: 0.2, green: 0.43, blue: 0.83),
        Color(red: 0.2, green: 0.43, blue: 0.83),
        Color(red: 0.2, green: 0.43, blue: 0.83),
        Color(red: 0.2, green: 0.43, blue: 0.83),
        Color(red: 0.2, green: 0.43, blue: 0.83),
        Color(red: 0.2, green: 0.43, blue: 0.83),
        Color(red: 0.2, green: 0.43, blue: 0.83),
        Color(red: 0.2, green: 0.43, blue: 0.83),
        Color(red: 0.2, green: 0.43, blue: 0.83)
    ]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 1
    
    var pitchBackgroundSelectedColor: [Color] = [.white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white]
    var pitchTextSelectedColor: Color = .black
    var pitchSelectedOpacity: Double = 0.8
    
    var logo: Image? = Image("fogcity_logo")
    var logoXScale: Double = 5
    var logoYScale: Double = 10
}

#Preview {
    PitchPipe(theme: FogCityTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(FogCityTheme().getBackground()))
}
