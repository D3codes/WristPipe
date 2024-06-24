//
//  VoicesUnitedTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 4/20/24.
//

import SwiftUI

struct VoicesUnitedTheme: Theme {
    var id: Int = 2002
    var name: String = "Voices United"
    
    private let VUPurple: Color = Color(red: 0.365, green: 0.180, blue:0.545)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.white)
    }
    
    var selectorColor: Color = Color(red: 0.365, green: 0.180, blue:0.545)
    var selectorTextColor: Color = Color(red: 0.365, green: 0.180, blue:0.545)
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
    var pitchTextUnselectedColor: Color = .black
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
    var pitchTextSelectedColor: Color = .white
    var pitchSelectedOpacity: Double = 0.7
    
    var logo: Image? = Image("vu_logo")
    var logoXScale: Double = 5
    var logoYScale: Double = 0
}

#Preview {
    PitchPipe(theme: VoicesUnitedTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(VoicesUnitedTheme().getBackground()))
}