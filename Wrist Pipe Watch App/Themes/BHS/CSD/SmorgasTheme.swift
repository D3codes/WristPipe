//
//  SmorgasTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/26/24.
//

import SwiftUI

struct SmorgasTheme: Theme {
    var id: Int = 1304
    var name: String = "SmorgasChorus"
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.black)
    }

    var selectorColor: Color = Color(red: 0.92, green: 0.6, blue: 0.24)
    var selectorTextColor: Color = Color(red: 0.92, green: 0.6, blue: 0.24)
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
        Color(red: 0.92, green: 0.6, blue: 0.24),
        Color(red: 0.92, green: 0.6, blue: 0.24),
        Color(red: 0.92, green: 0.6, blue: 0.24),
        Color(red: 0.92, green: 0.6, blue: 0.24),
        Color(red: 0.92, green: 0.6, blue: 0.24),
        Color(red: 0.92, green: 0.6, blue: 0.24),
        Color(red: 0.92, green: 0.6, blue: 0.24),
        Color(red: 0.92, green: 0.6, blue: 0.24),
        Color(red: 0.92, green: 0.6, blue: 0.24),
        Color(red: 0.92, green: 0.6, blue: 0.24),
        Color(red: 0.92, green: 0.6, blue: 0.24),
        Color(red: 0.92, green: 0.6, blue: 0.24)
    ]
    var pitchTextUnselectedColor: Color = .black
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
    var pitchSelectedOpacity: Double = 1.0
    
    var logo: Image? = Image("smorgaslogo")
    var logoXScale: Double = 2
    var logoYScale: Double = 2
}

#Preview() {
    struct SmorgasTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: SmorgasTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return SmorgasTheme_Preview()
}
