//
//  BoiseChordsTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/27/24.
//

import SwiftUI

struct BoiseChordsTheme: Theme {
    var id: Int = 1402
    var name: String = "Boise Chordsmen"
    
    private let darkBlue: Color = Color(red: 0.09, green: 0.27, blue: 0.43)
    private let lightBlue: Color = Color(red: 0.23, green: 0.52, blue: 0.77)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(lightBlue.gradient)
    }

    var selectorColor: Color = Color(red: 0.09, green: 0.27, blue: 0.43)
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [.white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white]

    var pitchBackgroundUnselectedColor: [Color] = [
        Color(red: 0.09, green: 0.27, blue: 0.43),
        Color(red: 0.09, green: 0.27, blue: 0.43),
        Color(red: 0.09, green: 0.27, blue: 0.43),
        Color(red: 0.09, green: 0.27, blue: 0.43),
        Color(red: 0.09, green: 0.27, blue: 0.43),
        Color(red: 0.09, green: 0.27, blue: 0.43),
        Color(red: 0.09, green: 0.27, blue: 0.43),
        Color(red: 0.09, green: 0.27, blue: 0.43),
        Color(red: 0.09, green: 0.27, blue: 0.43),
        Color(red: 0.09, green: 0.27, blue: 0.43),
        Color(red: 0.09, green: 0.27, blue: 0.43),
        Color(red: 0.09, green: 0.27, blue: 0.43)
    ]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 1

    var pitchBackgroundSelectedColor: [Color] = [.white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white]
    var pitchTextSelectedColor: Color = Color(red: 0.09, green: 0.27, blue: 0.43)
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("boise_logo")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview() {
    PitchPipe(theme: BoiseChordsTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(BoiseChordsTheme().getBackground())
}
