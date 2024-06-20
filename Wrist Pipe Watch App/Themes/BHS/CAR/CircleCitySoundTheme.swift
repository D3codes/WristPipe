//
//  CircleCitySoundTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/26/24.
//

import SwiftUI

struct CircleCitySoundTheme: Theme {
    var id: Int = 1101
    var name: String = "Circle City Sound"
    
    private let circleCityRed: Color = Color(red: 0.69, green: 0.19, blue: 0.31)
    
    private let circleCityLightBlue: Color = Color(red: 0.149, green: 0.663, blue: 0.882)
    private let circleCityDarkBlue: Color = Color(red: 0.153, green: 0.161, blue: 0.404)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(LinearGradient(colors: [circleCityLightBlue, circleCityDarkBlue], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
    
    var selectorColor: Color = Color(red: 0.69, green: 0.19, blue: 0.31)
    var selectorTextColor: Color = .black
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.149, green: 0.663, blue: 0.882).opacity(0.8),
        Color(red: 0.149, green: 0.663, blue: 0.882).opacity(0.8),
        Color(red: 0.149, green: 0.663, blue: 0.882).opacity(0.8),
        Color(red: 0.149, green: 0.663, blue: 0.882).opacity(0.8),
        Color(red: 0.149, green: 0.663, blue: 0.882).opacity(0.8),
        Color(red: 0.149, green: 0.663, blue: 0.882).opacity(0.8),
        Color(red: 0.149, green: 0.663, blue: 0.882).opacity(0.8),
        Color(red: 0.149, green: 0.663, blue: 0.882).opacity(0.8),
        Color(red: 0.149, green: 0.663, blue: 0.882).opacity(0.8),
        Color(red: 0.149, green: 0.663, blue: 0.882).opacity(0.8),
        Color(red: 0.149, green: 0.663, blue: 0.882).opacity(0.8),
        Color(red: 0.149, green: 0.663, blue: 0.882).opacity(0.8)
    ]
    
    var pitchBackgroundUnselectedColor: [Color] = [.clear, .clear, .clear, .clear, .clear, .clear, .clear, .clear, .clear, .clear, .clear, .clear]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 1
    
    var pitchBackgroundSelectedColor: [Color] = [.white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white]
    var pitchTextSelectedColor: Color = .black
    var pitchSelectedOpacity: Double = 0.9
    
    var logo: Image? = Image("CCS_logo")
    var logoXScale: Double = -20.0
    var logoYScale: Double = -20.0
}

#Preview {
    PitchPipe(theme: CircleCitySoundTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(CircleCitySoundTheme().getBackground()))
}
