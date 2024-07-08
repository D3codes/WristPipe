//
//  VisionsTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 6/23/24.
//

import SwiftUI

struct VisionsTheme: Theme {
    var id: Int = 1308
    var name: String = "Visions of Harmony"
    
    private let visionsPurple: Color = Color(red: 0.290, green: 0.196, blue: 0.561)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(visionsPurple.gradient)
    }

    var selectorColor: Color = .white
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.290, green: 0.196, blue: 0.561),
        Color(red: 0.290, green: 0.196, blue: 0.561),
        Color(red: 0.290, green: 0.196, blue: 0.561),
        Color(red: 0.290, green: 0.196, blue: 0.561),
        Color(red: 0.290, green: 0.196, blue: 0.561),
        Color(red: 0.290, green: 0.196, blue: 0.561),
        Color(red: 0.290, green: 0.196, blue: 0.561),
        Color(red: 0.290, green: 0.196, blue: 0.561),
        Color(red: 0.290, green: 0.196, blue: 0.561),
        Color(red: 0.290, green: 0.196, blue: 0.561),
        Color(red: 0.290, green: 0.196, blue: 0.561),
        Color(red: 0.290, green: 0.196, blue: 0.561)
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
    var pitchUnselectedOpacity: Double = 1.0

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
    
    var logo: Image? = Image("visions_logo")
    var logoXScale: Double = 8
    var logoYScale: Double = 8
}

#Preview() {
    struct VisionsTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: VisionsTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return VisionsTheme_Preview()
}
