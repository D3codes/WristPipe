//
//  AlexandriaHarmonizersTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 4/19/24.
//

import SwiftUI

struct AlexandriaHarmonizersTheme: Theme {
    var id: Int = 1901
    var name: String = "Alexandria Harmonizers"
    
    private let AHBlue: Color = Color(red: 0.122, green: 0.082, blue: 0.522)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(AHBlue)
    }
    
    var selectorColor: Color = .white
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.122, green: 0.082, blue: 0.522),
        Color(red: 0.122, green: 0.082, blue: 0.522),
        Color(red: 0.122, green: 0.082, blue: 0.522),
        Color(red: 0.122, green: 0.082, blue: 0.522),
        Color(red: 0.122, green: 0.082, blue: 0.522),
        Color(red: 0.122, green: 0.082, blue: 0.522),
        Color(red: 0.122, green: 0.082, blue: 0.522),
        Color(red: 0.122, green: 0.082, blue: 0.522),
        Color(red: 0.122, green: 0.082, blue: 0.522),
        Color(red: 0.122, green: 0.082, blue: 0.522),
        Color(red: 0.122, green: 0.082, blue: 0.522),
        Color(red: 0.122, green: 0.082, blue: 0.522)
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
    var pitchTextSelectedColor: Color = Color(red: 0.122, green: 0.082, blue: 0.522)
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("alexandria_logo")
    var logoXScale: Double = 5
    var logoYScale: Double = 5
}

#Preview {
    PitchPipe(theme: AlexandriaHarmonizersTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(AlexandriaHarmonizersTheme().getBackground()))
}

