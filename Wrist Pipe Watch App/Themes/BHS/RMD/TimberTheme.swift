//
//  TimberTheme.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/14/24.
//

import SwiftUI

struct TimberTheme: Theme {
    var id: Int = 2303
    var name: String = "The Timberliners"
    
    private var TimberGreen: Color = Color(red: 0.000, green: 0.502, blue: 0.212)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(TimberGreen.gradient)
    }
    
    var selectorColor: Color = .white
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
    
    var logo: Image? = Image("timber_logo")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview {
    PitchPipe(theme: TimberTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(TimberTheme().getBackground()))
}
