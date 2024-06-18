//
//  VocaMotionTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 4/20/24.
//

import SwiftUI

struct VocaMotionTheme: Theme {
    var id: Int = 2001
    var name: String = "VocaMotion"
    
    private let VMLightBlue: Color = Color(red: 0.251, green: 0.569, blue: 0.980)
    private let VMDarkBlue: Color = Color(red: 0.059, green: 0.031, blue: 0.302)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(VMDarkBlue)
    }
    
    var selectorColor: Color = Color(red: 0.251, green: 0.569, blue: 0.980)
    var selectorTextColor: Color = .black
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.059, green: 0.031, blue: 0.302),
        Color(red: 0.059, green: 0.031, blue: 0.302),
        Color(red: 0.059, green: 0.031, blue: 0.302),
        Color(red: 0.059, green: 0.031, blue: 0.302),
        Color(red: 0.059, green: 0.031, blue: 0.302),
        Color(red: 0.059, green: 0.031, blue: 0.302),
        Color(red: 0.059, green: 0.031, blue: 0.302),
        Color(red: 0.059, green: 0.031, blue: 0.302),
        Color(red: 0.059, green: 0.031, blue: 0.302),
        Color(red: 0.059, green: 0.031, blue: 0.302),
        Color(red: 0.059, green: 0.031, blue: 0.302),
        Color(red: 0.059, green: 0.031, blue: 0.302)
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
    var pitchTextUnselectedColor: Color = Color(red: 0.251, green: 0.569, blue: 0.980)
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
    var pitchTextSelectedColor: Color = Color(red: 0.059, green: 0.031, blue: 0.302)
    var pitchSelectedOpacity: Double = 0.9
    
    var logo: Image? = Image("vocamotion_logo")
    var logoXScale: Double = 5
    var logoYScale: Double = 5
}

#Preview {
    PitchPipe(theme: VocaMotionTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(VocaMotionTheme().getBackground()))
}
