//
//  SPEBSQSATheme.swift
//  WristPipe2 Watch App
//
//  Created by David Freeman on 2/26/24.
//

import SwiftUI

struct SPEBSQSATheme: Theme {
    var id: Int = 1001
    var name: String = "SPEBSQSA"
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.15, green: 0.29, blue: 0.5).gradient)
    }

    var selectorColor: Color = Color(red: 0.85, green: 0.78, blue: 0.59)
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue]

    var pitchBackgroundUnselectedColor: [Color] = [.clear, .clear, .clear, .clear, .clear, .clear, .clear, .clear, .clear, .clear, .clear, .clear]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 1.0

    var pitchBackgroundSelectedColor: [Color] = [.white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white]
    var pitchTextSelectedColor: Color = .black
    var pitchSelectedOpacity: Double = 1.0
    
    var logo: Image? = Image("SPEBSQSAlogo")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
    
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
    PitchPipe(theme: SPEBSQSATheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(SPEBSQSATheme().getBackground())
}
