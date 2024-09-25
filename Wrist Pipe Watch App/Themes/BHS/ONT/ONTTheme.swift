//
//  ONTTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 9/18/24.
//

import SwiftUI

struct ONTTheme: Theme {
    var id: Int = 1012
    var name: String = "Ontario District"
    
    private let ONTGreen: Color = Color(red: 0.302, green: 0.514, blue: 0.392)
    private let ONTGold: Color = Color(red: 0.851, green: 0.737, blue: 0.467)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.white)
    }
    
    var selectorColor: Color = Color(red: 0.851, green: 0.737, blue: 0.467)
    var selectorTextColor: Color = Color(red: 0.302, green: 0.514, blue: 0.392)
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
    var pitchUnselectedOpacity: Double = 0.75
    
    var pitchBackgroundSelectedColor: [Color] = [
        Color(red: 0.302, green: 0.514, blue: 0.392),
        Color(red: 0.302, green: 0.514, blue: 0.392),
        Color(red: 0.302, green: 0.514, blue: 0.392),
        Color(red: 0.302, green: 0.514, blue: 0.392),
        Color(red: 0.302, green: 0.514, blue: 0.392),
        Color(red: 0.302, green: 0.514, blue: 0.392),
        Color(red: 0.302, green: 0.514, blue: 0.392),
        Color(red: 0.302, green: 0.514, blue: 0.392),
        Color(red: 0.302, green: 0.514, blue: 0.392),
        Color(red: 0.302, green: 0.514, blue: 0.392),
        Color(red: 0.302, green: 0.514, blue: 0.392),
        Color(red: 0.302, green: 0.514, blue: 0.392)
    ]
    var pitchTextSelectedColor: Color = .white
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("logo_district_ONT")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview() {
    struct ONTTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: ONTTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return ONTTheme_Preview()
}
