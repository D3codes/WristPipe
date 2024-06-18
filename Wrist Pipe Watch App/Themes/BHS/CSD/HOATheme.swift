//
//  HOATheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/26/24.
//

import SwiftUI

struct HOATheme: Theme {
    var id: Int = 1306
    var name: String = "Heart of America"
    
    private let hoaBlue: Color = Color(red: 0.08, green: 0.19, blue: 0.37)
    private let hoaRed: Color = Color(red: 0.75, green: 0.31, blue: 0.34)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.08, green: 0.19, blue: 0.37).gradient)
    }

    var selectorColor: Color = .white
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [.white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white]

    var pitchBackgroundUnselectedColor: [Color] = [
        Color(red: 0.75, green: 0.31, blue: 0.34),
        Color(red: 0.75, green: 0.31, blue: 0.34),
        Color(red: 0.75, green: 0.31, blue: 0.34),
        Color(red: 0.75, green: 0.31, blue: 0.34),
        Color(red: 0.75, green: 0.31, blue: 0.34),
        Color(red: 0.75, green: 0.31, blue: 0.34),
        Color(red: 0.75, green: 0.31, blue: 0.34),
        Color(red: 0.75, green: 0.31, blue: 0.34),
        Color(red: 0.75, green: 0.31, blue: 0.34),
        Color(red: 0.75, green: 0.31, blue: 0.34),
        Color(red: 0.75, green: 0.31, blue: 0.34),
        Color(red: 0.75, green: 0.31, blue: 0.34)
    ]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 1.0

    var pitchBackgroundSelectedColor: [Color] = [.white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white]
    var pitchTextSelectedColor: Color = .black
    var pitchSelectedOpacity: Double = 1.0
    
    var logo: Image? = Image("HOA_logo")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview() {
    PitchPipe(theme: HOATheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(HOATheme().getBackground()))
}
