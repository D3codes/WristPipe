//
//  LPCTheme.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/14/24.
//

import SwiftUI

struct LPCTheme: Theme {
    var id: Int = 2302
    var name: String = "Longs Peak Chorus"
    
    private var LPCRed: Color = Color(red: 0.741, green: 0.114, blue: 0.000)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(LPCRed.gradient)
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
    
    var logo: Image? = Image("lpc_logo")
    var logoXScale: Double = 5
    var logoYScale: Double = 5
}

#Preview {
    PitchPipe(theme: LPCTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(LPCTheme().getBackground()))
}
