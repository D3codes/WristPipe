//
//  TVSTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 6/23/24.
//

import SwiftUI

struct TVSTheme: Theme {
    var id: Int = 1405
    var name: String = "Tacoma Vocal Standard"
    
    private let tvsPurple: Color = Color(red: 0.314, green: 0.180, blue: 0.376)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(tvsPurple.gradient)
    }
    
    var selectorColor: Color = .white
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.314, green: 0.180, blue: 0.376),
        Color(red: 0.314, green: 0.180, blue: 0.376),
        Color(red: 0.314, green: 0.180, blue: 0.376),
        Color(red: 0.314, green: 0.180, blue: 0.376),
        Color(red: 0.314, green: 0.180, blue: 0.376),
        Color(red: 0.314, green: 0.180, blue: 0.376),
        Color(red: 0.314, green: 0.180, blue: 0.376),
        Color(red: 0.314, green: 0.180, blue: 0.376),
        Color(red: 0.314, green: 0.180, blue: 0.376),
        Color(red: 0.314, green: 0.180, blue: 0.376),
        Color(red: 0.314, green: 0.180, blue: 0.376),
        Color(red: 0.314, green: 0.180, blue: 0.376)
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
    
    var logo: Image? = Image("tvs_logo")
    var logoXScale: Double = 3
    var logoYScale: Double = 3
}

#Preview() {
    struct TVSTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: TVSTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return TVSTheme_Preview()
}
