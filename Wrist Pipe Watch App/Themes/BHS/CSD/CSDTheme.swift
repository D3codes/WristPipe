//
//  CSDTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 9/18/24.
//

import SwiftUI

struct CSDTheme: Theme {
    var id: Int = 1004
    var name: String = "Central States District"
    
    private let CSDBlue: Color = Color(red: 0.016, green: 0.027, blue: 0.424)
    private let CSDGold: Color = Color(red: 0.831, green: 0.710, blue: 0.008)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.white)
    }
    
    var selectorColor: Color = Color(red: 0.016, green: 0.027, blue: 0.424)
    var selectorTextColor: Color = .red
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
        Color(red: 0.831, green: 0.710, blue: 0.008),
        Color(red: 0.831, green: 0.710, blue: 0.008),
        Color(red: 0.831, green: 0.710, blue: 0.008),
        Color(red: 0.831, green: 0.710, blue: 0.008),
        Color(red: 0.831, green: 0.710, blue: 0.008),
        Color(red: 0.831, green: 0.710, blue: 0.008),
        Color(red: 0.831, green: 0.710, blue: 0.008),
        Color(red: 0.831, green: 0.710, blue: 0.008),
        Color(red: 0.831, green: 0.710, blue: 0.008),
        Color(red: 0.831, green: 0.710, blue: 0.008),
        Color(red: 0.831, green: 0.710, blue: 0.008),
        Color(red: 0.831, green: 0.710, blue: 0.008)
    ]
    var pitchTextSelectedColor: Color = .white
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("logo_district_CSD")
    var logoXScale: Double = 8.0
    var logoYScale: Double = 8.0
}

#Preview() {
    struct CSDTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: CSDTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return CSDTheme_Preview()
}
