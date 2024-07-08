//
//  AcaFedTheme.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/17/24.
//

import SwiftUI

struct AcaFedTheme: Theme {
    var id: Int = 2602
    var name: String = "Acapella Federation"
    
    var acaFedPurple: Color = Color(red: 0.251, green: 0.118, blue: 0.424)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(acaFedPurple.gradient)
    }
    
    var selectorColor: Color = .white
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.251, green: 0.118, blue: 0.424),
        Color(red: 0.251, green: 0.118, blue: 0.424),
        Color(red: 0.251, green: 0.118, blue: 0.424),
        Color(red: 0.251, green: 0.118, blue: 0.424),
        Color(red: 0.251, green: 0.118, blue: 0.424),
        Color(red: 0.251, green: 0.118, blue: 0.424),
        Color(red: 0.251, green: 0.118, blue: 0.424),
        Color(red: 0.251, green: 0.118, blue: 0.424),
        Color(red: 0.251, green: 0.118, blue: 0.424),
        Color(red: 0.251, green: 0.118, blue: 0.424),
        Color(red: 0.251, green: 0.118, blue: 0.424),
        Color(red: 0.251, green: 0.118, blue: 0.424)
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
    var pitchUnselectedOpacity: Double = 1.0

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
    var pitchTextSelectedColor: Color = Color(red: 0.251, green: 0.118, blue: 0.424)
    var pitchSelectedOpacity: Double = 1.0
    
    var logo: Image? = Image("acafed_logo")
    var logoXScale: Double = 10
    var logoYScale: Double = 10
}

#Preview() {
    struct AcaFedTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: AcaFedTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return AcaFedTheme_Preview()
}
