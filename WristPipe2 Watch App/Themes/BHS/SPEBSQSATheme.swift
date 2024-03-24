//
//  SPEBSQSATheme.swift
//  WristPipe2 Watch App
//
//  Created by David Freeman on 2/26/24.
//

import SwiftUI

struct SPEBSQSATheme: Theme {
    var id: Int = 1001
    
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
}

#Preview() {
    PitchPipe(theme: SPEBSQSATheme())
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(SPEBSQSATheme().getBackground())
}
