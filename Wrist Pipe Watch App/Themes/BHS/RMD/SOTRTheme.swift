//
//  SOTRTheme.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/14/24.
//

import SwiftUI

struct SOTRTheme: Theme {
    var id: Int = 2300
    var name: String = "Sound of the Rockies"
    
    private var SOTRLightBlue: Color = Color(red: 0.216, green: 0.667, blue: 0.882)
    private var SOTRMedBlue: Color = Color(red: 0.153, green: 0.431, blue: 0.667)
    private var SOTRDarkBlue: Color = Color(red: 0.055, green: 0.208, blue: 0.325)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(SOTRMedBlue.gradient)
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
    
    var logo: Image? = Image("sotr_logo")
    var logoXScale: Double = 5
    var logoYScale: Double = 5
}

#Preview {
    PitchPipe(theme: SOTRTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(SOTRTheme().getBackground()))
}
