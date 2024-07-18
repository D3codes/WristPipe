//
//  EIHTheme.swift
//  Wrist Pipe
//
//  Created by David Freeman on 7/17/24.
//

import SwiftUI

struct EIHTheme: Theme {
    var id: Int = 3003
    var name: String = "EIH"
    
    private let eihRed: Color = Color(red: 0.882, green: 0.282, blue: 0.286)
    private let eihYellow: Color = Color(red: 0.973, green: 0.867, blue: 0.071)
    private let eihBlue: Color = Color(red: 0.384, green: 0.404, blue: 0.722)
    private let eihGreen: Color = Color(red: 0.224, green: 0.306, blue: 0.235)
    private let eihPink: Color = Color(red: 0.953, green: 0.537, blue: 0.757)
    private let eihPurple: Color = Color(red: 0.212, green: 0.102, blue: 0.200)
    
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
        Color(red: 0.882, green: 0.282, blue: 0.286),
        Color(red: 0.973, green: 0.867, blue: 0.071),
        Color(red: 0.384, green: 0.404, blue: 0.722),
        Color(red: 0.224, green: 0.306, blue: 0.235),
        Color(red: 0.953, green: 0.537, blue: 0.757),
        Color(red: 0.212, green: 0.102, blue: 0.200),
        Color(red: 0.882, green: 0.282, blue: 0.286),
        Color(red: 0.973, green: 0.867, blue: 0.071),
        Color(red: 0.384, green: 0.404, blue: 0.722),
        Color(red: 0.224, green: 0.306, blue: 0.235),
        Color(red: 0.953, green: 0.537, blue: 0.757),
        Color(red: 0.212, green: 0.102, blue: 0.200)
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
    var pitchSelectedOpacity: Double = 1.0
    
    var logo: Image? = Image("eih")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview() {
    struct EIHTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: EIHTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return EIHTheme_Preview()
}
