//
//  UnityTheme.swift
//  Wrist Pipe Watch App
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
            .background(AngularGradient(gradient: Gradient(colors: [.red, .black, .black, .green, .black, .black, .red, .black, .black, .green, .black, .black, .red, .black, .black, .green, .black, .black, .red]), center: .center))
    }

    var selectorColor: Color = .white
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [.black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black]

    var pitchBackgroundUnselectedColor: [Color] = [.red, .green, .red, .green, .red, .green, .red, .green, .red, .green, .red, .green]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 1

    var pitchBackgroundSelectedColor: [Color] = [.black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black]
    var pitchTextSelectedColor: Color = .white
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = nil
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview() {
    PitchPipe(theme: UnityTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(UnityTheme().getBackground())
}
