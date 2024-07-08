//
//  MOHTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/27/24.
//

import SwiftUI

struct MOHTheme: Theme {
    var id: Int = 1502
    var name: String = "Masters of Harmony"
    
    private let MOHBlue: Color = Color(red: 0.15, green: 0.18, blue: 0.5)
    private let MOHGold: Color = Color(red: 0.83, green: 0.7, blue: 0.27)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(MOHBlue)
    }
    
    var selectorColor: Color = Color(red: 0.83, green: 0.7, blue: 0.27)
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.15, green: 0.18, blue: 0.5),
        Color(red: 0.15, green: 0.18, blue: 0.5),
        Color(red: 0.15, green: 0.18, blue: 0.5),
        Color(red: 0.15, green: 0.18, blue: 0.5),
        Color(red: 0.15, green: 0.18, blue: 0.5),
        Color(red: 0.15, green: 0.18, blue: 0.5),
        Color(red: 0.15, green: 0.18, blue: 0.5),
        Color(red: 0.15, green: 0.18, blue: 0.5),
        Color(red: 0.15, green: 0.18, blue: 0.5),
        Color(red: 0.15, green: 0.18, blue: 0.5),
        Color(red: 0.15, green: 0.18, blue: 0.5),
        Color(red: 0.15, green: 0.18, blue: 0.5)
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
    var pitchTextSelectedColor: Color = .black
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("MOH_logo")
    var logoXScale: Double = 5
    var logoYScale: Double = 5
}

#Preview() {
    struct MOHTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: MOHTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return MOHTheme_Preview()
}
