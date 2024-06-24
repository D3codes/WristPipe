//
//  TransTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 6/23/24.
//

import SwiftUI

struct TransTheme: Theme {
    var id: Int = 3002
    var name: String = "Helms"
    
    private let transBlue: Color = Color(red: 0.361, green: 0.804, blue: 0.980)
    private let transPink: Color = Color(red: 0.961, green: 0.663, blue: 0.722)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                LinearGradient(stops: [
                    Gradient.Stop(color: transBlue, location: 0),
                    Gradient.Stop(color: transBlue, location: 0.09),
                    Gradient.Stop(color: transPink, location: 0.1),
                    Gradient.Stop(color: transPink, location: 0.34),
                    Gradient.Stop(color: .white, location: 0.35),
                    Gradient.Stop(color: .white, location: 0.64),
                    Gradient.Stop(color: transPink, location: 0.65),
                    Gradient.Stop(color: transPink, location: 0.89),
                    Gradient.Stop(color: transBlue, location: 0.9),
                    Gradient.Stop(color: transBlue, location: 1),
                ], startPoint: .top, endPoint: .bottom)
            )
    }

    var selectorColor: Color = Color(red: 0.361, green: 0.804, blue: 0.980)
    var selectorTextColor: Color = Color(red: 0.961, green: 0.663, blue: 0.722)
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
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black
    ]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 0.7

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
    var pitchSelectedOpacity: Double = 1.0
    
    var logo: Image? = nil
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview() {
    PitchPipe(theme: TransTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(TransTheme().getBackground()))
}
