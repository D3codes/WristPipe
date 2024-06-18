//
//  VOGTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 4/19/24.
//

import SwiftUI

struct VOGTheme: Theme {
    var id: Int = 1902
    var name: String = "Voices of Gotham"
    
    private let VOGBlue: Color = Color(red: 0.000, green: 0.361, blue: 0.671)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.white)
    }
    
    var selectorColor: Color = Color(red: 0.000, green: 0.361, blue: 0.671)
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
        Color(red: 0.000, green: 0.361, blue: 0.671),
        Color(red: 0.000, green: 0.361, blue: 0.671),
        Color(red: 0.000, green: 0.361, blue: 0.671),
        Color(red: 0.000, green: 0.361, blue: 0.671),
        Color(red: 0.000, green: 0.361, blue: 0.671),
        Color(red: 0.000, green: 0.361, blue: 0.671),
        Color(red: 0.000, green: 0.361, blue: 0.671),
        Color(red: 0.000, green: 0.361, blue: 0.671),
        Color(red: 0.000, green: 0.361, blue: 0.671),
        Color(red: 0.000, green: 0.361, blue: 0.671),
        Color(red: 0.000, green: 0.361, blue: 0.671),
        Color(red: 0.000, green: 0.361, blue: 0.671)
    ]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 1
    
    var pitchBackgroundSelectedColor: [Color] = [
        .gray,
        .gray,
        .gray,
        .gray,
        .gray,
        .gray,
        .gray,
        .gray,
        .gray,
        .gray,
        .gray,
        .gray
    ]
    var pitchTextSelectedColor: Color = Color(red: 0.000, green: 0.361, blue: 0.671)
    var pitchSelectedOpacity: Double = 0.8
    
    var logo: Image? = Image("VOG_logo")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview {
    PitchPipe(theme: VOGTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(VOGTheme().getBackground()))
}
