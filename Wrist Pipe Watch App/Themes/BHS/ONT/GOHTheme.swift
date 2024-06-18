//
//  GOHTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 4/20/24.
//

import SwiftUI

struct GOHTheme: Theme {
    var id: Int = 2101
    var name: String = "Gentlemen of Harmony"
    
    private var GOHBlue: Color = Color(red: 0.141, green: 0.647, blue: 0.867)
    private var GOHPurple: Color = Color(red: 0.580, green: 0.141, blue: 0.553)
    private var GOHYellow: Color = Color(red: 0.667, green: 0.733, blue: 0.000)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.black)
    }
    
    var selectorColor: Color = .white
    var selectorTextColor: Color = .black
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
        Color(red: 0.141, green: 0.647, blue: 0.867),
        Color(red: 0.580, green: 0.141, blue: 0.553),
        Color(red: 0.667, green: 0.733, blue: 0.000),
        Color(red: 0.141, green: 0.647, blue: 0.867),
        Color(red: 0.580, green: 0.141, blue: 0.553),
        Color(red: 0.667, green: 0.733, blue: 0.000),
        Color(red: 0.141, green: 0.647, blue: 0.867),
        Color(red: 0.580, green: 0.141, blue: 0.553),
        Color(red: 0.667, green: 0.733, blue: 0.000),
        Color(red: 0.141, green: 0.647, blue: 0.867),
        Color(red: 0.580, green: 0.141, blue: 0.553),
        Color(red: 0.667, green: 0.733, blue: 0.000)
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
    
    var logo: Image? = Image("GOH_logo")
    var logoXScale: Double = 5
    var logoYScale: Double = 5
}

#Preview {
    PitchPipe(theme: GOHTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(GOHTheme().getBackground()))
}
