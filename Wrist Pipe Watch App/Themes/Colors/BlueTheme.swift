//
//  BlueTheme.swift
//  Wrist Pipe Watch App
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
}

#Preview() {
    PitchPipe(theme: BlueTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(BlueTheme().getBackground())
}
