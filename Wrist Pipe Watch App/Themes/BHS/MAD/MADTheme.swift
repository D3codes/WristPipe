//
//  MADTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 9/18/24.
//

import SwiftUI

struct MADTheme: Theme {
    var id: Int = 1010
    var name: String = "Mid-Atlantic District"
    
    private let MADBlue: Color = Color(red: 0.176, green: 0.835, blue: 0.945)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.white)
    }
    
    var selectorColor: Color = .black
    var selectorTextColor: Color = .black
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
        Color(red: 0.176, green: 0.835, blue: 0.945),
        Color(red: 0.176, green: 0.835, blue: 0.945),
        Color(red: 0.176, green: 0.835, blue: 0.945),
        Color(red: 0.176, green: 0.835, blue: 0.945),
        Color(red: 0.176, green: 0.835, blue: 0.945),
        Color(red: 0.176, green: 0.835, blue: 0.945),
        Color(red: 0.176, green: 0.835, blue: 0.945),
        Color(red: 0.176, green: 0.835, blue: 0.945),
        Color(red: 0.176, green: 0.835, blue: 0.945),
        Color(red: 0.176, green: 0.835, blue: 0.945),
        Color(red: 0.176, green: 0.835, blue: 0.945),
        Color(red: 0.176, green: 0.835, blue: 0.945)
    ]
    var pitchTextSelectedColor: Color = .white
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("logo_district_MAD")
    var logoXScale: Double = 5.0
    var logoYScale: Double = 5.0
}

#Preview() {
    struct MADTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: MADTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return MADTheme_Preview()
}
