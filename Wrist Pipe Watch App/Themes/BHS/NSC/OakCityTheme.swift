//
//  OakCityTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/26/24.
//

import SwiftUI

struct OakCityTheme: Theme {
    var id: Int = 1204
    var name: String = "Oak City Sound"
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.black)
    }
    
    var selectorColor: Color = .white
    var selectorTextColor: Color = .black
    var selectorBackgroundColor: [Color] = [.black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black]
    
    var pitchBackgroundUnselectedColor: [Color] = [.black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 1
    
    var pitchBackgroundSelectedColor: [Color] = [.white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white]
    var pitchTextSelectedColor: Color = .black
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("Oakcity_logo")
    var logoXScale: Double = 10
    var logoYScale: Double = 10
}

#Preview {
    PitchPipe(theme: OakCityTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(OakCityTheme().getBackground()))
}
