//
//  PrideTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 2/26/24.
//

import SwiftUI

struct PrideTheme: Theme {
    var id: Int = 3001
    var name: String = "Stonewall"
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center))
    }

    var selectorColor: Color = .white
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [.red, .orange, .yellow, .green, .blue, .purple, .red, .orange, .yellow, .green, .blue, .purple]

    var pitchBackgroundUnselectedColor: [Color] = [.red, .orange, .yellow, .green, .blue, .purple, .red, .orange, .yellow, .green, .blue, .purple]
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
    PitchPipe(theme: PrideTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(PrideTheme().getBackground()))
}
