//
//  ChooChooTheme.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/17/24.
//

import SwiftUI

struct ChooChooTheme: Theme {
    var id: Int = 2501
    var name: String = "Choo Choo Chorus"
    
    var chooChooOrange: Color = Color(red: 0.769, green: 0.239, blue: 0.161)
    var chooChooBlue: Color = Color(red: 0.161, green: 0.486, blue: 0.725)
    
    func getBackground() -> any View {
        return ZStack {
            AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.white)
            Image("choochoo_bg")
                .resizable()
                .frame(width: 130, height: 180)
                .offset(x: -3, y: -14)
                .background(.white)
        }
    }
    
    var selectorColor: Color = Color(red: 0.769, green: 0.239, blue: 0.161)
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
        Color(red: 0.161, green: 0.486, blue: 0.725),
        Color(red: 0.161, green: 0.486, blue: 0.725),
        Color(red: 0.161, green: 0.486, blue: 0.725),
        Color(red: 0.161, green: 0.486, blue: 0.725),
        Color(red: 0.161, green: 0.486, blue: 0.725),
        Color(red: 0.161, green: 0.486, blue: 0.725),
        Color(red: 0.161, green: 0.486, blue: 0.725),
        Color(red: 0.161, green: 0.486, blue: 0.725),
        Color(red: 0.161, green: 0.486, blue: 0.725),
        Color(red: 0.161, green: 0.486, blue: 0.725),
        Color(red: 0.161, green: 0.486, blue: 0.725),
        Color(red: 0.161, green: 0.486, blue: 0.725)
    ]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 0.7
    
    var pitchBackgroundSelectedColor: [Color] = [
        Color(red: 0.769, green: 0.239, blue: 0.161),
        Color(red: 0.769, green: 0.239, blue: 0.161),
        Color(red: 0.769, green: 0.239, blue: 0.161),
        Color(red: 0.769, green: 0.239, blue: 0.161),
        Color(red: 0.769, green: 0.239, blue: 0.161),
        Color(red: 0.769, green: 0.239, blue: 0.161),
        Color(red: 0.769, green: 0.239, blue: 0.161),
        Color(red: 0.769, green: 0.239, blue: 0.161),
        Color(red: 0.769, green: 0.239, blue: 0.161),
        Color(red: 0.769, green: 0.239, blue: 0.161),
        Color(red: 0.769, green: 0.239, blue: 0.161),
        Color(red: 0.769, green: 0.239, blue: 0.161)
    ]
    var pitchTextSelectedColor: Color = .white
    var pitchSelectedOpacity: Double = 0.9
    
    var logo: Image? = Image("choochoo_logo")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview {
    PitchPipe(theme: ChooChooTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(ChooChooTheme().getBackground()))
}
