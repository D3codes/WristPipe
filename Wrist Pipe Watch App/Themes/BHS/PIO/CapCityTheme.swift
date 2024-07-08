//
//  CapCityTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 6/13/24.
//

import SwiftUI

struct CapCityTheme: Theme {
    var id: Int = 2202
    var name: String = "Capital City Chordsmen"
    
    private var CapCityBlue: Color = Color(red: 0.184, green: 0.227, blue: 0.471)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(CapCityBlue.gradient)
    }
    
    var selectorColor: Color = .white
    var selectorTextColor: Color = Color(red: 0.184, green: 0.227, blue: 0.471)
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
    
    var logo: Image? = Image("CapCity_logo")
    var logoXScale: Double = 3
    var logoYScale: Double = 3
}

#Preview() {
    struct CapCityTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: CapCityTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return CapCityTheme_Preview()
}
