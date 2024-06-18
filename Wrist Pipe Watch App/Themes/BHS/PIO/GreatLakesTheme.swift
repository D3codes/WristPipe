//
//  GreatLakesTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 4/21/24.
//

import SwiftUI

struct GreatLakesTheme: Theme {
    var id: Int = 2200
    var name: String = "Great Lakes Chorus"
    
    private var GLBlue: Color = Color(red: 0.000, green: 0.290, blue: 0.553)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(GLBlue.gradient)
    }
    
    var selectorColor: Color = .white
    var selectorTextColor: Color = .black
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.000, green: 0.290, blue: 0.553),
        Color(red: 0.000, green: 0.290, blue: 0.553),
        Color(red: 0.000, green: 0.290, blue: 0.553),
        Color(red: 0.000, green: 0.290, blue: 0.553),
        Color(red: 0.000, green: 0.290, blue: 0.553),
        Color(red: 0.000, green: 0.290, blue: 0.553),
        Color(red: 0.000, green: 0.290, blue: 0.553),
        Color(red: 0.000, green: 0.290, blue: 0.553),
        Color(red: 0.000, green: 0.290, blue: 0.553),
        Color(red: 0.000, green: 0.290, blue: 0.553),
        Color(red: 0.000, green: 0.290, blue: 0.553),
        Color(red: 0.000, green: 0.290, blue: 0.553)
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
    
    var logo: Image? = Image("greatlakes_logo")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview {
    PitchPipe(theme: GreatLakesTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(GreatLakesTheme().getBackground()))
}
