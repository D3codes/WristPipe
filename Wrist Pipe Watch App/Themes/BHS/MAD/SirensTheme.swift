//
//  SirensTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 4/7/25.
//

import SwiftUI

struct SirensTheme: Theme {
    var id: Int = 1905
    var name: String = "Sirens of Gotham"
    
    private let SirensRed: Color = Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.white)
    }
    
    var selectorColor: Color = Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000)
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000),
        Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000),
        Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000),
        Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000),
        Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000),
        Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000),
        Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000),
        Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000),
        Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000),
        Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000),
        Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000),
        Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000)
    ]
    
    var pitchBackgroundUnselectedColor: [Color] = [
        Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000),
        Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000),
        Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000),
        Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000),
        Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000),
        Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000),
        Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000),
        Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000),
        Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000),
        Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000),
        Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000),
        Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000)
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
    var pitchTextSelectedColor: Color = Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000)
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("sirens_logo")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview() {
    struct SirensTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: SirensTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return SirensTheme_Preview()
}
