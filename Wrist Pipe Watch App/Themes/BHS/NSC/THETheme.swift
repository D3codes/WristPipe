//
//  THETheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/26/24.
//

import SwiftUI

struct THETheme: Theme {
    var id: Int = 1203
    var name: String = "Triad Harmony Express"
    
    private let THEBlue: Color = Color(red: 0.18, green: 0.18, blue: 0.38)
    
    func getBackground() -> any View {
        return ZStack {
            AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(THEBlue.gradient)
            Image("THE_logo")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .offset(y: -80)
        }
    }
    
    var selectorColor: Color = .white
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.18, green: 0.18, blue: 0.38),
        Color(red: 0.91, green: 0.16, blue: 0.18),
        Color(red: 0.18, green: 0.18, blue: 0.38),
        Color(red: 0.91, green: 0.16, blue: 0.18),
        Color(red: 0.18, green: 0.18, blue: 0.38),
        Color(red: 0.91, green: 0.16, blue: 0.18),
        Color(red: 0.18, green: 0.18, blue: 0.38),
        Color(red: 0.91, green: 0.16, blue: 0.18),
        Color(red: 0.18, green: 0.18, blue: 0.38),
        Color(red: 0.91, green: 0.16, blue: 0.18),
        Color(red: 0.18, green: 0.18, blue: 0.38),
        Color(red: 0.91, green: 0.16, blue: 0.18)
    ]
    
    var pitchBackgroundUnselectedColor: [Color] = [
        Color(red: 0.18, green: 0.18, blue: 0.38),
        Color(red: 0.91, green: 0.16, blue: 0.18),
        Color(red: 0.18, green: 0.18, blue: 0.38),
        Color(red: 0.91, green: 0.16, blue: 0.18),
        Color(red: 0.18, green: 0.18, blue: 0.38),
        Color(red: 0.91, green: 0.16, blue: 0.18),
        Color(red: 0.18, green: 0.18, blue: 0.38),
        Color(red: 0.91, green: 0.16, blue: 0.18),
        Color(red: 0.18, green: 0.18, blue: 0.38),
        Color(red: 0.91, green: 0.16, blue: 0.18),
        Color(red: 0.18, green: 0.18, blue: 0.38),
        Color(red: 0.91, green: 0.16, blue: 0.18)
    ]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 0.8
    
    var pitchBackgroundSelectedColor: [Color] = [.white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white]
    var pitchTextSelectedColor: Color = .black
    var pitchSelectedOpacity: Double = 0.9
    
    var logo: Image? = nil
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview {
    PitchPipe(theme: THETheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(THETheme().getBackground()))
}
