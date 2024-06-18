//
//  VRTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 4/20/24.
//

import SwiftUI

struct VRTheme: Theme {
    var id: Int = 2000
    var name: String = "Vocal Revolution"
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.white)
    }
    
    var selectorColor: Color = .black
    var selectorTextColor: Color = .black
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
    var pitchTextSelectedColor: Color = .white
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("vr_logo")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview {
    PitchPipe(theme: VRTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(VRTheme().getBackground()))
}
