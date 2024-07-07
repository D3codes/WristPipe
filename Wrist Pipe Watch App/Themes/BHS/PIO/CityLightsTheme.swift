//
//  CityLightsTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 4/22/24.
//

import SwiftUI

struct CityLightsTheme: Theme {
    var id: Int = 2201
    var name: String = "City Lights"
    
    private var CLBlue: Color = Color(red: 0.024, green: 0.039, blue: 0.161)
    private var CLGold: Color = Color(red: 0.718, green: 0.655, blue: 0.051)
    
    func getBackground() -> any View {
        return ZStack {
            Image("citylights_background")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: 220, minHeight: 300)
                .background(CLBlue)
                .opacity(0.4)
        }
    }
    
    var selectorColor: Color = Color(red: 0.718, green: 0.655, blue: 0.051)
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.024, green: 0.039, blue: 0.161),
        Color(red: 0.024, green: 0.039, blue: 0.161),
        Color(red: 0.024, green: 0.039, blue: 0.161),
        Color(red: 0.024, green: 0.039, blue: 0.161),
        Color(red: 0.024, green: 0.039, blue: 0.161),
        Color(red: 0.024, green: 0.039, blue: 0.161),
        Color(red: 0.024, green: 0.039, blue: 0.161),
        Color(red: 0.024, green: 0.039, blue: 0.161),
        Color(red: 0.024, green: 0.039, blue: 0.161),
        Color(red: 0.024, green: 0.039, blue: 0.161),
        Color(red: 0.024, green: 0.039, blue: 0.161),
        Color(red: 0.024, green: 0.039, blue: 0.161)
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
    
    var logo: Image? = Image("citylights_logo")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview {
    PitchPipe(theme: CityLightsTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(CityLightsTheme().getBackground()))
}
