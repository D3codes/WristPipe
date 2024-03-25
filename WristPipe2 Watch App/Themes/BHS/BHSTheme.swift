//
//  BHSTheme.swift
//  WristPipe2 Watch App
//
//  Created by David Freeman on 2/26/24.
//

import SwiftUI

struct BHSTheme: Theme {
    var id: Int = 1000
    var name: String = "BHS"
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.white)
    }

    var selectorColor: Color = .black
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [.black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black]

    var pitchBackgroundUnselectedColor: [Color] = [.gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray]
    var pitchTextUnselectedColor: Color = .black
    var pitchUnselectedOpacity: Double = 0.8

    var pitchBackgroundSelectedColor: [Color] = [.gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray]
    var pitchTextSelectedColor: Color = .black
    var pitchSelectedOpacity: Double = 0.5
    
    var logo: Image? = Image("BHSlogo")
    var logoXScale: Double = 5
    var logoYScale: Double = 5
    
    var isColorTheme = false
    var isCauseTheme = false
    var isBHSTheme = true
    var isCARTheme = false
    var isNSCTheme = false
    var isCSDTheme = false
    var isEVGTheme = false
    var isFWDTheme = false
    var isILLTheme = false
    var isJADTheme = false
    var isLOLTheme = false
    var isMADTheme = false
    var isNEDTheme = false
    var isONTTheme = false
    var isPIOTheme = false
    var isRMDTheme = false
    var isSLDTheme = false
    var isSHDTheme = false
    var isSWDTheme = false
    var isSUNTheme = false
}

#Preview() {
    PitchPipe(theme: BHSTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(BHSTheme().getBackground())
}
