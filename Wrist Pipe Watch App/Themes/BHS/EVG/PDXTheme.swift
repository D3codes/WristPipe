//
//  PDXTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/27/24.
//

import SwiftUI

struct PDXTheme: Theme {
    var id: Int = 1400
    var name: String = "PDX Voices"
    
    private let gradientStart: Color = Color(red: 0.92, green: 0.2, blue: 0.34)
    private let gradientEnd: Color = Color(red: 0.93, green: 0.42, blue: 0.18)
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(LinearGradient(gradient: Gradient(colors: [gradientStart, gradientEnd]), startPoint: .leading, endPoint: .trailing))
    }

    var selectorColor: Color = .black
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [.black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black]

    var pitchBackgroundUnselectedColor: [Color] = [.black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 1

    var pitchBackgroundSelectedColor: [Color] = [.white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white]
    var pitchTextSelectedColor: Color = .black
    var pitchSelectedOpacity: Double = 0.8
    
    var logo: Image? = Image("PDX_logo")
    var logoXScale: Double = 5
    var logoYScale: Double = 5
}

#Preview() {
    PitchPipe(theme: PDXTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(PDXTheme().getBackground())
}
