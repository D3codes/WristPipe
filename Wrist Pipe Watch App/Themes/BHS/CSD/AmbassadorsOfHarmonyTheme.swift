//
//  AmbassadorsOfHarmonyTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 2/26/24.
//

import SwiftUI

struct AOHTheme: Theme {
    var id: Int = 1301
    var name: String = "Ambassadors of Harmony"
    
    func getBackground() -> any View {
        return ZStack {
            Image("aoh_background")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.white)
        }
    }

    var selectorColor: Color = .black
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [.white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white]

    var pitchBackgroundUnselectedColor: [Color] = [.gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray]
    var pitchTextUnselectedColor: Color = .black
    var pitchUnselectedOpacity: Double = 0.8

    var pitchBackgroundSelectedColor: [Color] = [.black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black]
    var pitchTextSelectedColor: Color = .white
    var pitchSelectedOpacity: Double = 0.9
    
    var logo: Image? = Image("aoh_logo")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview() {
    PitchPipe(theme: AOHTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AOHTheme().getBackground())
}
