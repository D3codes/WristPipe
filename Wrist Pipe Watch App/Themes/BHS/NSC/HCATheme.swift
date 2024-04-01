//
//  HCATheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/26/24.
//

import SwiftUI

struct HCATheme: Theme {
    var id: Int = 1201
    var name: String = "Heart of Carolina"
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.black)
    }
    
    var selectorColor: Color = .white
    var selectorTextColor: Color = .black
    var selectorBackgroundColor: [Color] = [.white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white]
    
    var pitchBackgroundUnselectedColor: [Color] = [
        Color(red: 0.48, green: 0.21, blue: 0.46),
        Color(red: 0.48, green: 0.21, blue: 0.46),
        Color(red: 0.48, green: 0.21, blue: 0.46),
        Color(red: 0.48, green: 0.21, blue: 0.46),
        Color(red: 0.48, green: 0.21, blue: 0.46),
        Color(red: 0.48, green: 0.21, blue: 0.46),
        Color(red: 0.48, green: 0.21, blue: 0.46),
        Color(red: 0.48, green: 0.21, blue: 0.46),
        Color(red: 0.48, green: 0.21, blue: 0.46),
        Color(red: 0.48, green: 0.21, blue: 0.46),
        Color(red: 0.48, green: 0.21, blue: 0.46),
        Color(red: 0.48, green: 0.21, blue: 0.46)
    ]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 1.0
    
    var pitchBackgroundSelectedColor: [Color] = [
        Color(red: 0.9, green: 0.75, blue: 0.38),
        Color(red: 0.9, green: 0.75, blue: 0.38),
        Color(red: 0.9, green: 0.75, blue: 0.38),
        Color(red: 0.9, green: 0.75, blue: 0.38),
        Color(red: 0.9, green: 0.75, blue: 0.38),
        Color(red: 0.9, green: 0.75, blue: 0.38),
        Color(red: 0.9, green: 0.75, blue: 0.38),
        Color(red: 0.9, green: 0.75, blue: 0.38),
        Color(red: 0.9, green: 0.75, blue: 0.38),
        Color(red: 0.9, green: 0.75, blue: 0.38),
        Color(red: 0.9, green: 0.75, blue: 0.38),
        Color(red: 0.9, green: 0.75, blue: 0.38),
    ]
    var pitchTextSelectedColor: Color = .black
    var pitchSelectedOpacity: Double = 1.0
    
    var logo: Image? = Image("HCA_logo")
    var logoXScale: Double = 5.0
    var logoYScale: Double = 5.0
}

#Preview {
    PitchPipe(theme: HCATheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(HCATheme().getBackground())
}
