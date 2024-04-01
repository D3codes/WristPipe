//
//  GreatRiverVoicesTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/26/24.
//

import SwiftUI

struct GreatRiverVoicesTheme: Theme {
    var id: Int = 1100
    var name: String = "Great River Voices"
    
    private let gradientStart: Color = Color(red: 0.37, green: 0.19, blue: 0.55)
    private let gradientEnd: Color = Color(red: 0.25, green: 0.55, blue: 0.52)
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(LinearGradient(gradient: Gradient(colors: [gradientStart, gradientEnd]), startPoint: .top, endPoint: .bottom))
    }
    
    var selectorColor: Color = .white
    var selectorTextColor: Color = .black
    var selectorBackgroundColor: [Color] = [.white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white]
    
    var pitchBackgroundUnselectedColor: [Color] = [.white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white]
    var pitchTextUnselectedColor: Color = .black
    var pitchUnselectedOpacity: Double = 0.7
    var pitchBackgroundSelectedColor: [Color] = [.white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white]
    var pitchTextSelectedColor: Color = .black
    var pitchSelectedOpacity: Double = 0.9
    
    var logo: Image? = Image("GRV_logo")
    var logoXScale: Double = 5.0
    var logoYScale: Double = 5.0
}

#Preview {
    PitchPipe(theme: GreatRiverVoicesTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(GreatRiverVoicesTheme().getBackground())
}
