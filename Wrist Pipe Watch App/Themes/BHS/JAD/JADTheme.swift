//
//  JADTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 9/18/24.
//

import SwiftUI

struct JADTheme: Theme {
    var id: Int = 1008
    var name: String = "Johnny Appleseed District"
    
    private let JADLightRed: Color = Color(red: 0.878, green: 0.125, blue: 0.153)
    private let JADDarkRed: Color = Color(red: 0.490, green: 0.114, blue: 0.122)
    private let JADGreen: Color = Color(red: 0.263, green: 0.663, blue: 0.278)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(LinearGradient(colors: [JADLightRed, JADDarkRed], startPoint: .top, endPoint: .bottom))
    }
    
    var selectorColor: Color = .white
    var selectorTextColor: Color = Color(red: 0.263, green: 0.663, blue: 0.278)
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
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 0.75
    
    var pitchBackgroundSelectedColor: [Color] = [
        Color(red: 0.263, green: 0.663, blue: 0.278),
        Color(red: 0.263, green: 0.663, blue: 0.278),
        Color(red: 0.263, green: 0.663, blue: 0.278),
        Color(red: 0.263, green: 0.663, blue: 0.278),
        Color(red: 0.263, green: 0.663, blue: 0.278),
        Color(red: 0.263, green: 0.663, blue: 0.278),
        Color(red: 0.263, green: 0.663, blue: 0.278),
        Color(red: 0.263, green: 0.663, blue: 0.278),
        Color(red: 0.263, green: 0.663, blue: 0.278),
        Color(red: 0.263, green: 0.663, blue: 0.278),
        Color(red: 0.263, green: 0.663, blue: 0.278),
        Color(red: 0.263, green: 0.663, blue: 0.278)
    ]
    var pitchTextSelectedColor: Color = .white
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("logo_district_JAD")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview() {
    struct JADTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: JADTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return JADTheme_Preview()
}
