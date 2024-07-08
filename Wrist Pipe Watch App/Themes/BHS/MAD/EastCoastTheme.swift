//
//  EastCoastTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 6/23/24.
//

import SwiftUI

struct EastCoastTheme: Theme {
    var id: Int = 1903
    var name: String = "East Coast Sound"
    
    private let EastCoastBlue: Color = Color(red: 0.004, green: 0.094, blue: 0.447)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.white)
    }
    
    var selectorColor: Color = Color(red: 0.004, green: 0.094, blue: 0.447)
    var selectorTextColor: Color = Color(red: 0.004, green: 0.094, blue: 0.447)
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
        Color(red: 0.004, green: 0.094, blue: 0.447),
        Color(red: 0.004, green: 0.094, blue: 0.447),
        Color(red: 0.004, green: 0.094, blue: 0.447),
        Color(red: 0.004, green: 0.094, blue: 0.447),
        Color(red: 0.004, green: 0.094, blue: 0.447),
        Color(red: 0.004, green: 0.094, blue: 0.447),
        Color(red: 0.004, green: 0.094, blue: 0.447),
        Color(red: 0.004, green: 0.094, blue: 0.447),
        Color(red: 0.004, green: 0.094, blue: 0.447),
        Color(red: 0.004, green: 0.094, blue: 0.447),
        Color(red: 0.004, green: 0.094, blue: 0.447),
        Color(red: 0.004, green: 0.094, blue: 0.447)
    ]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 1
    
    var pitchBackgroundSelectedColor: [Color] = [
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
    var pitchTextSelectedColor: Color = Color(red: 0.004, green: 0.094, blue: 0.447)
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("eastcoast_logo")
    var logoXScale: Double = 3
    var logoYScale: Double = 3
}

#Preview() {
    struct EastCoastTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: EastCoastTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return EastCoastTheme_Preview()
}
