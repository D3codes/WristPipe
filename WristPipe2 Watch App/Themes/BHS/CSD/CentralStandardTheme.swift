//
//  CentralStandardTheme.swift
//  WristPipe2 Watch App
//
//  Created by David Freeman on 3/15/24.
//

import SwiftUI

struct CentralStandardTheme: Theme {
    var id: Int = 1302
    var name: String = "Central Standard"
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.black)
    }

    var selectorColor: Color = .white
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [.black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black]

    var pitchBackgroundUnselectedColor: [Color] = [.black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 1.0

    var pitchBackgroundSelectedColor: [Color] = [.white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white]
    var pitchTextSelectedColor: Color = .black
    var pitchSelectedOpacity: Double = 1.0
    
    var logo: Image? = Image("centralstandardlogo")
    var logoXScale: Double = 10
    var logoYScale: Double = 10
    
    var isColorTheme = false
    var isCauseTheme = false
    var isBHSTheme = true
    var isCARTheme = false
    var isNSCTheme = false
    var isCSDTheme = true
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
    PitchPipe(theme: CentralStandardTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(CentralStandardTheme().getBackground())
}
