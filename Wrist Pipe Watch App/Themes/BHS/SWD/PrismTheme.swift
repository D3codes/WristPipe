//
//  PrismTheme.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/17/24.
//

import SwiftUI

struct PrismTheme: Theme {
    var id: Int = 2601
    var name: String = "Prism"
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.black)
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
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 1.0

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
    var pitchSelectedOpacity: Double = 1.0
    
    var logo: Image? = Image("prism_logo")
    var logoXScale: Double = 3
    var logoYScale: Double = 3
}

#Preview {
    PitchPipe(theme: PrismTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(PrismTheme().getBackground()))
}
