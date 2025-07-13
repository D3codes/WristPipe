//
//  PhoeniciansTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 6/29/25.
//

import SwiftUI

struct PhoeniciansTheme: Theme {
    var id: Int = 1505
    var name: String = "The Phoenicians"
    
    private let phoRed: Color = Color(red: 0.835, green: 0.110, blue: 0.137)
    private let phoOrange: Color = Color(red: 0.953, green: 0.427, blue: 0.118)
    private let phoYellow: Color = Color(red: 0.973, green: 0.925, blue: 0.071)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(LinearGradient(gradient: Gradient(colors: [phoRed, .black]), startPoint: .top, endPoint: .bottom))
    }
    
    var selectorColor: Color = Color(red: 0.973, green: 0.925, blue: 0.071)
    var selectorTextColor: Color = Color(red: 0.835, green: 0.110, blue: 0.137)
    var selectorBackgroundColor: [Color] = [
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
    var pitchUnselectedOpacity: Double = 0.8

    var pitchBackgroundSelectedColor: [Color] = [
        Color(red: 0.973, green: 0.925, blue: 0.071),
        Color(red: 0.973, green: 0.925, blue: 0.071),
        Color(red: 0.973, green: 0.925, blue: 0.071),
        Color(red: 0.973, green: 0.925, blue: 0.071),
        Color(red: 0.973, green: 0.925, blue: 0.071),
        Color(red: 0.973, green: 0.925, blue: 0.071),
        Color(red: 0.973, green: 0.925, blue: 0.071),
        Color(red: 0.973, green: 0.925, blue: 0.071),
        Color(red: 0.973, green: 0.925, blue: 0.071),
        Color(red: 0.973, green: 0.925, blue: 0.071),
        Color(red: 0.973, green: 0.925, blue: 0.071),
        Color(red: 0.973, green: 0.925, blue: 0.071)
    ]
    var pitchTextSelectedColor: Color = Color(red: 0.835, green: 0.110, blue: 0.137)
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("phoenicians_logo")
    var logoXScale: Double = 5
    var logoYScale: Double = 5
}

#Preview() {
    struct PhoeniciansTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: PhoeniciansTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return PhoeniciansTheme_Preview()
}
