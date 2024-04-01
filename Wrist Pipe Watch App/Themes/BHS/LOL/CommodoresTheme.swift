//
//  CommodoresTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/28/24.
//

import SwiftUI

struct CommodoresTheme: Theme {
    var id: Int = 1803
    var name: String = "Minneapolis Commodores"
    
    //48, 48, 139
    private let commodoresBlue: Color = Color(red: 0.19, green: 0.19, blue: 0.54)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.blue.gradient)
    }
    
    var selectorColor: Color = Color(red: 0.19, green: 0.19, blue: 0.54)
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
        .clear,
        .clear,
        .clear,
        .clear,
        .clear,
        .clear,
        .clear,
        .clear,
        .clear,
        .clear,
        .clear,
        .clear
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
    var pitchTextSelectedColor: Color = Color(red: 0.19, green: 0.19, blue: 0.54)
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("commodores_logo")
    var logoXScale: Double = 6
    var logoYScale: Double = 6
}

#Preview {
    PitchPipe(theme: CommodoresTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(CommodoresTheme().getBackground())
}
