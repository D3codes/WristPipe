//
//  HOHTheme.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/17/24.
//

import SwiftUI

struct HOHTheme: Theme {
    var id: Int = 2703
    var name: String = "Heralds of Harmony"
    
    var hohBlue: Color = Color(red: 0.078, green: 0.180, blue: 0.259)
    var hohGold: Color = Color(red: 0.804, green: 0.624, blue: 0.412)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.white)
    }
    
    var selectorColor: Color = Color(red: 0.078, green: 0.180, blue: 0.259)
    var selectorTextColor: Color = .white
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
        Color(red: 0.804, green: 0.624, blue: 0.412),
        Color(red: 0.804, green: 0.624, blue: 0.412),
        Color(red: 0.804, green: 0.624, blue: 0.412),
        Color(red: 0.804, green: 0.624, blue: 0.412),
        Color(red: 0.804, green: 0.624, blue: 0.412),
        Color(red: 0.804, green: 0.624, blue: 0.412),
        Color(red: 0.804, green: 0.624, blue: 0.412),
        Color(red: 0.804, green: 0.624, blue: 0.412),
        Color(red: 0.804, green: 0.624, blue: 0.412),
        Color(red: 0.804, green: 0.624, blue: 0.412),
        Color(red: 0.804, green: 0.624, blue: 0.412),
        Color(red: 0.804, green: 0.624, blue: 0.412)
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
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("hoh_logo")
    var logoXScale: Double = 10
    var logoYScale: Double = 10
}

#Preview {
    PitchPipe(theme: HOHTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(HOHTheme().getBackground()))
}
