//
//  MusicCityTheme.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/17/24.
//

import SwiftUI

struct MusicCityTheme: Theme {
    var id: Int = 2504
    var name: String = "Music City Chorus"
    
    var musicCityYellow: Color = Color(red: 0.976, green: 0.725, blue: 0.157)
    var musicCityBlue: Color = Color(red: 0.000, green: 0.000, blue: 0.290)
    var musicCityOrange: Color = Color(red: 0.996, green: 0.271, blue: 0.102)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.white)
    }
    
    var selectorColor: Color = Color(red: 0.000, green: 0.000, blue: 0.290)
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
        Color(red: 0.000, green: 0.000, blue: 0.290),
        Color(red: 0.000, green: 0.000, blue: 0.290),
        Color(red: 0.000, green: 0.000, blue: 0.290),
        Color(red: 0.996, green: 0.271, blue: 0.102),
        Color(red: 0.996, green: 0.271, blue: 0.102),
        Color(red: 0.996, green: 0.271, blue: 0.102),
        Color(red: 0.000, green: 0.000, blue: 0.290),
        Color(red: 0.976, green: 0.725, blue: 0.157),
        Color(red: 0.976, green: 0.725, blue: 0.157),
        Color(red: 0.976, green: 0.725, blue: 0.157),
        Color(red: 0.000, green: 0.000, blue: 0.290),
        Color(red: 0.000, green: 0.000, blue: 0.290)
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
    
    var logo: Image? = Image("musiccity_logo")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview {
    PitchPipe(theme: MusicCityTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(MusicCityTheme().getBackground()))
}
