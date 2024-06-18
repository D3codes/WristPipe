//
//  SingingBuckeyesTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/27/24.
//

import SwiftUI

struct SingingBuckeyesTheme: Theme {
    var id: Int = 1702
    var name: String = "Singing Buckeyes"
    
    private let SBRed: Color = Color(red: 0.66, green: 0.13, blue: 0.09)
    
    func getBackground() -> any View {
        return ZStack {
            AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.gray.gradient)
            Image("singingbuckeyes_logo")
                .resizable()
                .frame(maxWidth: 160, maxHeight: 60)
                .offset(y: 70)
        }
    }
    
    var selectorColor: Color = .black
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.66, green: 0.13, blue: 0.09),
        Color(red: 0.66, green: 0.13, blue: 0.09),
        Color(red: 0.66, green: 0.13, blue: 0.09),
        Color(red: 0.66, green: 0.13, blue: 0.09),
        Color(red: 0.66, green: 0.13, blue: 0.09),
        Color(red: 0.66, green: 0.13, blue: 0.09),
        Color(red: 0.66, green: 0.13, blue: 0.09),
        Color(red: 0.66, green: 0.13, blue: 0.09),
        Color(red: 0.66, green: 0.13, blue: 0.09),
        Color(red: 0.66, green: 0.13, blue: 0.09),
        Color(red: 0.66, green: 0.13, blue: 0.09),
        Color(red: 0.66, green: 0.13, blue: 0.09)
    ]
    
    var pitchBackgroundUnselectedColor: [Color] = [
        .gray,
        .gray,
        .gray,
        .gray,
        .gray,
        .gray,
        .gray,
        .gray,
        .gray,
        .gray,
        .gray,
        .gray
    ]
    var pitchTextUnselectedColor: Color = .black
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
    var pitchSelectedOpacity: Double = 0.9
    
    var logo: Image? = nil
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview {
    PitchPipe(theme: SingingBuckeyesTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(SingingBuckeyesTheme().getBackground()))
}
