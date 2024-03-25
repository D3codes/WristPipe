//
//  BlueTheme.swift
//  WristPipe2 Watch App
//
//  Created by David Freeman on 2/25/24.
//

import SwiftUI

struct BlueTheme: Theme {
    var id: Int = 1
    var name: String = "Blue"
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.blue.gradient)
    }

    var selectorColor: Color = .white
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue]

    var pitchBackgroundUnselectedColor: [Color] = [.clear, .clear, .clear, .clear, .clear, .clear, .clear, .clear, .clear, .clear, .clear, .clear]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 1.0

    var pitchBackgroundSelectedColor: [Color] = [.white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white]
    var pitchTextSelectedColor: Color = .black
    var pitchSelectedOpacity: Double = 1.0
    
    var logo: Image? = nil
    var logoXScale: Double = 0
    var logoYScale: Double = 0
    
    var isColorTheme = true
    var isCauseTheme = false
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
    PitchPipe(theme: BlueTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(BlueTheme().getBackground())
}
