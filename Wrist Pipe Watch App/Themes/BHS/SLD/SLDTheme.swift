//
//  SLDTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 9/18/24.
//

import SwiftUI

struct SLDTheme: Theme {
    var id: Int = 1015
    var name: String = "Seneca Land District"
    
    private let RMDGreen: Color = Color(red: 0.118, green: 0.561, blue: 0.318)
    private let RMDBlue: Color = Color(red: 0.098, green: 0.388, blue: 0.643)
    private let RMDRed: Color = Color(red: 0.698, green: 0.192, blue: 0.188)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.white)
    }
    
    var selectorColor: Color = Color(red: 0.698, green: 0.192, blue: 0.188)
    var selectorTextColor: Color = Color(red: 0.698, green: 0.192, blue: 0.188)
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
        Color(red: 0.118, green: 0.561, blue: 0.318),
        Color(red: 0.118, green: 0.561, blue: 0.318),
        Color(red: 0.118, green: 0.561, blue: 0.318),
        Color(red: 0.118, green: 0.561, blue: 0.318),
        Color(red: 0.098, green: 0.388, blue: 0.643),
        Color(red: 0.098, green: 0.388, blue: 0.643),
        Color(red: 0.098, green: 0.388, blue: 0.643),
        Color(red: 0.098, green: 0.388, blue: 0.643),
        Color(red: 0.098, green: 0.388, blue: 0.643),
        Color(red: 0.098, green: 0.388, blue: 0.643),
        Color(red: 0.118, green: 0.561, blue: 0.318),
        Color(red: 0.118, green: 0.561, blue: 0.318)
    ]
    var pitchTextSelectedColor: Color = .white
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("logo_district_SLD")
    var logoXScale: Double = -10.0
    var logoYScale: Double = -10.0
}

#Preview() {
    struct SLDTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: SLDTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return SLDTheme_Preview()
}
