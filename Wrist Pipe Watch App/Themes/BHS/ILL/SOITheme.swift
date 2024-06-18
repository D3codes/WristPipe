//
//  SOITheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/27/24.
//

import SwiftUI

struct SOITheme: Theme {
    var id: Int = 1600
    var name: String = "Sound of Illinois"
    
    private let SOIBlue: Color = Color(red: 0.17, green: 0.22, blue: 0.55)
    
    func getBackground() -> any View {
        return ZStack {
            AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(SOIBlue.gradient)
            Image("SOI_logo")
                .resizable()
                .frame(maxWidth: 180, maxHeight: 100)
                //.background(.white)
                .offset(y: -75)
        }
    }
    
    var selectorColor: Color = .white
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.17, green: 0.22, blue: 0.55),
        Color(red: 0.17, green: 0.22, blue: 0.55),
        Color(red: 0.17, green: 0.22, blue: 0.55),
        Color(red: 0.17, green: 0.22, blue: 0.55),
        Color(red: 0.17, green: 0.22, blue: 0.55),
        Color(red: 0.17, green: 0.22, blue: 0.55),
        Color(red: 0.17, green: 0.22, blue: 0.55),
        Color(red: 0.17, green: 0.22, blue: 0.55),
        Color(red: 0.17, green: 0.22, blue: 0.55),
        Color(red: 0.17, green: 0.22, blue: 0.55),
        Color(red: 0.17, green: 0.22, blue: 0.55),
        Color(red: 0.17, green: 0.22, blue: 0.55)
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
    var pitchSelectedOpacity: Double = 0.85
    
    var logo: Image? = nil
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview {
    PitchPipe(theme: SOITheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(SOITheme().getBackground()))
}
