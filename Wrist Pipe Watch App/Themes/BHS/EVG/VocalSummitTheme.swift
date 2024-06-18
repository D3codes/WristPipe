//
//  VocalSummitTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/27/24.
//

import SwiftUI

struct VocalSummitTheme: Theme {
    var id: Int = 1401
    var name: String = "Vocal Summit"
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.black.gradient)
    }

    var selectorColor: Color = .white
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [.black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black]

    var pitchBackgroundUnselectedColor: [Color] = [.black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 1

    var pitchBackgroundSelectedColor: [Color] = [.white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white]
    var pitchTextSelectedColor: Color = .black
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("vocalsummit_logo")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview() {
    PitchPipe(theme: VocalSummitTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(VocalSummitTheme().getBackground()))
}
