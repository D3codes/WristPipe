//
//  SenateAiresTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/27/24.
//

import SwiftUI

struct SenateAiresTheme: Theme {
    var id: Int = 1404
    var name: String = "SenateAires"
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.white)
    }
    
    var selectorColor: Color = .black
    var selectorTextColor: Color = .black
    var selectorBackgroundColor: [Color] = [.white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white]
    
    var pitchBackgroundUnselectedColor: [Color] = [.black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black, .black]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 1
    
    var pitchBackgroundSelectedColor: [Color] = [.gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray]
    var pitchTextSelectedColor: Color = .black
    var pitchSelectedOpacity: Double = 0.9
    
    var logo: Image? = Image("senateaires_logo")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview {
    PitchPipe(theme: SenateAiresTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(SenateAiresTheme().getBackground()))
}
