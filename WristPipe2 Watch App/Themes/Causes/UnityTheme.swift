//
//  UnityTheme.swift
//  WristPipe2 Watch App
//
//  Created by David Freeman on 2/26/24.
//

import SwiftUI

struct UnityTheme: Theme {
    var id: Int = 3000
    var name: String = "Unity"
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.black)
    }

    var selectorColor: Color = .white
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [.black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black]

    var pitchBackgroundUnselectedColor: [Color] = [.red, .green, .red, .green, .red, .green, .red, .green, .red, .green, .red, .green]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 0.8

    var pitchBackgroundSelectedColor: [Color] = [.black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black]
    var pitchTextSelectedColor: Color = .white
    var pitchSelectedOpacity: Double = 1.0
    
    var logo: Image? = nil
    var logoXScale: Double = 0
    var logoYScale: Double = 0
    
    var isColorTheme = false
    var isCauseTheme = true
    var isBHSTheme = false
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
    PitchPipe(theme: UnityTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(UnityTheme().getBackground())
}
