//
//  ParksideTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 4/19/24.
//

import SwiftUI

struct ParksideTheme: Theme {
    var id: Int = 1900
    var name: String = "Parkside"
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.black.gradient)
    }
    
    var selectorColor: Color = .white
    var selectorTextColor: Color = .white
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
    
    var logo: Image? = Image("parkside_logo")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview {
    PitchPipe(theme: ParksideTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(ParksideTheme().getBackground()))
}
