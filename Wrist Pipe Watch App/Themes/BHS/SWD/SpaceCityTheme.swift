//
//  SpaceCityTheme.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/17/24.
//

import SwiftUI

struct SpaceCityTheme: Theme {
    var id: Int = 2600
    var name: String = "Space City Sound"
    
    var spaceCityGreen: Color = Color(red: 0.243, green: 0.886, blue: 0.141)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.white)
    }
    
    var selectorColor: Color = Color(red: 0.243, green: 0.886, blue: 0.141)
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [
        .white,
        .white,
        .white,
        .white,
        .white,
        .white,
        .white,
        .white,
        .white,
        .white,
        .white,
        .white
    ]
    
    var pitchBackgroundUnselectedColor: [Color] = [
        Color(red: 0.243, green: 0.886, blue: 0.141),
        Color(red: 0.243, green: 0.886, blue: 0.141),
        Color(red: 0.243, green: 0.886, blue: 0.141),
        Color(red: 0.243, green: 0.886, blue: 0.141),
        Color(red: 0.243, green: 0.886, blue: 0.141),
        Color(red: 0.243, green: 0.886, blue: 0.141),
        Color(red: 0.243, green: 0.886, blue: 0.141),
        Color(red: 0.243, green: 0.886, blue: 0.141),
        Color(red: 0.243, green: 0.886, blue: 0.141),
        Color(red: 0.243, green: 0.886, blue: 0.141),
        Color(red: 0.243, green: 0.886, blue: 0.141),
        Color(red: 0.243, green: 0.886, blue: 0.141)
    ]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 1

    var pitchBackgroundSelectedColor: [Color] = [
        .white,
        .white,
        .white,
        .white,
        .white,
        .white,
        .white,
        .white,
        .white,
        .white,
        .white,
        .white
    ]
    var pitchTextSelectedColor: Color = .black
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("spacecity_logo")
    var logoXScale: Double = 3
    var logoYScale: Double = 3
}

#Preview {
    PitchPipe(theme: SpaceCityTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(SpaceCityTheme().getBackground()))
}
