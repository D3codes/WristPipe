//
//  SaltairesTheme.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/14/24.
//

import SwiftUI

struct SaltairesTheme: Theme {
    var id: Int = 2301
    var name: String = "Saltaires"
    
    private var SaltairesRed: Color = Color(red: 0.804, green: 0.251, blue: 0.192)
    private var SaltairesBlue: Color = Color(red: 0.184, green: 0.435, blue: 0.757)
    private var SaltairesBG: Color = Color(red: 0.839, green: 0.839, blue: 0.839)
    
    func getBackground() -> any View {
        return ZStack {
            AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(SaltairesBG)
            Image("saltaires_bg")
                .resizable()
                .frame(minWidth: 200, maxWidth: .infinity, minHeight: 300, maxHeight: .infinity)
        }
    }
    
    var selectorColor: Color = .black
    var selectorTextColor: Color = .black
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.839, green: 0.839, blue: 0.839),
        Color(red: 0.839, green: 0.839, blue: 0.839),
        Color(red: 0.839, green: 0.839, blue: 0.839),
        Color(red: 0.839, green: 0.839, blue: 0.839),
        Color(red: 0.839, green: 0.839, blue: 0.839),
        Color(red: 0.839, green: 0.839, blue: 0.839),
        Color(red: 0.839, green: 0.839, blue: 0.839),
        Color(red: 0.839, green: 0.839, blue: 0.839),
        Color(red: 0.839, green: 0.839, blue: 0.839),
        Color(red: 0.839, green: 0.839, blue: 0.839),
        Color(red: 0.839, green: 0.839, blue: 0.839),
        Color(red: 0.839, green: 0.839, blue: 0.839)
    ]
    
    var pitchBackgroundUnselectedColor: [Color] = [
        Color(red: 0.184, green: 0.435, blue: 0.757),
        Color(red: 0.184, green: 0.435, blue: 0.757),
        Color(red: 0.184, green: 0.435, blue: 0.757),
        Color(red: 0.184, green: 0.435, blue: 0.757),
        Color(red: 0.184, green: 0.435, blue: 0.757),
        Color(red: 0.184, green: 0.435, blue: 0.757),
        Color(red: 0.184, green: 0.435, blue: 0.757),
        Color(red: 0.184, green: 0.435, blue: 0.757),
        Color(red: 0.184, green: 0.435, blue: 0.757),
        Color(red: 0.184, green: 0.435, blue: 0.757),
        Color(red: 0.184, green: 0.435, blue: 0.757),
        Color(red: 0.184, green: 0.435, blue: 0.757)
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
    
    var logo: Image? = Image("saltaires_logo")
    var logoXScale: Double = 10
    var logoYScale: Double = 10
}

#Preview {
    PitchPipe(theme: SaltairesTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(SaltairesTheme().getBackground()))
}
