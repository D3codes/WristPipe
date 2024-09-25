//
//  NEDTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 9/18/24.
//

import SwiftUI

struct NEDTheme: Theme {
    var id: Int = 1011
    var name: String = "Northeastern District"
    
    private let NEDBlue: Color = Color(red: 0.125, green: 0.275, blue: 0.596)
    private let NEDRed: Color = Color(red: 0.867, green: 0.216, blue: 0.169)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.white)
    }
    
    var selectorColor: Color = Color(red: 0.867, green: 0.216, blue: 0.169)
    var selectorTextColor: Color = Color(red: 0.125, green: 0.275, blue: 0.596)
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
        Color(red: 0.125, green: 0.275, blue: 0.596),
        Color(red: 0.125, green: 0.275, blue: 0.596),
        Color(red: 0.125, green: 0.275, blue: 0.596),
        Color(red: 0.125, green: 0.275, blue: 0.596),
        Color(red: 0.125, green: 0.275, blue: 0.596),
        Color(red: 0.125, green: 0.275, blue: 0.596),
        Color(red: 0.125, green: 0.275, blue: 0.596),
        Color(red: 0.125, green: 0.275, blue: 0.596),
        Color(red: 0.125, green: 0.275, blue: 0.596),
        Color(red: 0.125, green: 0.275, blue: 0.596),
        Color(red: 0.125, green: 0.275, blue: 0.596),
        Color(red: 0.125, green: 0.275, blue: 0.596)
    ]
    var pitchTextSelectedColor: Color = .white
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("logo_district_NED")
    var logoXScale: Double = -5.0
    var logoYScale: Double = -5.0
}

#Preview() {
    struct NEDTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: NEDTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return NEDTheme_Preview()
}
