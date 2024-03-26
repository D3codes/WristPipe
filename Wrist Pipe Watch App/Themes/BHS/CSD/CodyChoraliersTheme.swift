//
//  CodyChoraliersTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 2/25/24.
//

import SwiftUI

struct CodyChoraliersTheme: Theme {
    var id: Int = 1300
    var name: String = "Cody Choraliers"
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.4, green: 0.1, blue: 0.4).gradient)
    }

    var selectorColor: Color = Color(red: 0.62, green: 0.36, blue: 0.33)
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [Color(red: 0.75, green: 0.65, blue: 0.54), Color(red: 0.75, green: 0.65, blue: 0.54), Color(red: 0.75, green: 0.65, blue: 0.54), Color(red: 0.75, green: 0.65, blue: 0.54), Color(red: 0.75, green: 0.65, blue: 0.54), Color(red: 0.75, green: 0.65, blue: 0.54), Color(red: 0.75, green: 0.65, blue: 0.54), Color(red: 0.75, green: 0.65, blue: 0.54), Color(red: 0.75, green: 0.65, blue: 0.54), Color(red: 0.75, green: 0.65, blue: 0.54), Color(red: 0.75, green: 0.65, blue: 0.54), Color(red: 0.75, green: 0.65, blue: 0.54)]

    var pitchBackgroundUnselectedColor: [Color] = [.clear, .clear, .clear, .clear, .clear, .clear, .clear, .clear, .clear, .clear, .clear, .clear]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 1.0

    var pitchBackgroundSelectedColor: [Color] = [.white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white]
    var pitchTextSelectedColor: Color = .black
    var pitchSelectedOpacity: Double = 1.0
    
    var logo: Image? = Image("choralierslogo")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview() {
    PitchPipe(theme: CodyChoraliersTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(CodyChoraliersTheme().getBackground())
}
