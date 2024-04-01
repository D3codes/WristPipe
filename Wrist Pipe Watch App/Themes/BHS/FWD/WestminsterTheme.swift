//
//  WestminsterTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/27/24.
//

import SwiftUI

struct WestminsterTheme: Theme {
    var id: Int = 1500
    var name: String = "Westminster"
    
    private let westminsterGold: Color = Color(red: 0.91, green: 0.75, blue: 0.4)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(westminsterGold.gradient)
    }
    
    var selectorColor: Color = .black
    var selectorTextColor: Color = .black
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.91, green: 0.75, blue: 0.4),
        Color(red: 0.91, green: 0.75, blue: 0.4),
        Color(red: 0.91, green: 0.75, blue: 0.4),
        Color(red: 0.91, green: 0.75, blue: 0.4),
        Color(red: 0.91, green: 0.75, blue: 0.4),
        Color(red: 0.91, green: 0.75, blue: 0.4),
        Color(red: 0.91, green: 0.75, blue: 0.4),
        Color(red: 0.91, green: 0.75, blue: 0.4),
        Color(red: 0.91, green: 0.75, blue: 0.4),
        Color(red: 0.91, green: 0.75, blue: 0.4),
        Color(red: 0.91, green: 0.75, blue: 0.4),
        Color(red: 0.91, green: 0.75, blue: 0.4)
    ]
    
    var pitchBackgroundUnselectedColor: [Color] = [.black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black]
    var pitchTextUnselectedColor: Color = Color(red: 0.91, green: 0.75, blue: 0.4)
    var pitchUnselectedOpacity: Double = 1
    
    var pitchBackgroundSelectedColor: [Color] = [.white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white]
    var pitchTextSelectedColor: Color = .black
    var pitchSelectedOpacity: Double = 0.9
    
    var logo: Image? = Image("westminster_logo")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview {
    PitchPipe(theme: WestminsterTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(WestminsterTheme().getBackground())
}
