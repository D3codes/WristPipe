//
//  ForwardHarmonyTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/28/24.
//

import SwiftUI

struct ForwardHarmonyTheme: Theme {
    var id: Int = 1801
    var name: String = "Forward Harmony"
    
    private let FHPurple: Color = Color(red: 0.75, green: 0.45, blue: 0.87)
    private let FHBlue: Color = Color(red: 0.27, green: 0.58, blue: 0.6)
    private let FHGreen: Color = Color(red: 0.56, green: 0.81, blue: 0.39)
    private let FHOrange: Color = Color(red: 0.92, green: 0.72, blue: 0.4)
    
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
        Color(red: 0.75, green: 0.45, blue: 0.87),
        Color(red: 0.27, green: 0.58, blue: 0.6),
        Color(red: 0.56, green: 0.81, blue: 0.39),
        Color(red: 0.92, green: 0.72, blue: 0.4),
        Color(red: 0.75, green: 0.45, blue: 0.87),
        Color(red: 0.27, green: 0.58, blue: 0.6),
        Color(red: 0.56, green: 0.81, blue: 0.39),
        Color(red: 0.92, green: 0.72, blue: 0.4),
        Color(red: 0.75, green: 0.45, blue: 0.87),
        Color(red: 0.27, green: 0.58, blue: 0.6),
        Color(red: 0.56, green: 0.81, blue: 0.39),
        Color(red: 0.92, green: 0.72, blue: 0.4)
    ]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 1
    
    var pitchBackgroundSelectedColor: [Color] = [
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
    var pitchTextSelectedColor: Color = .black
    var pitchSelectedOpacity: Double = 0.6
    
    var logo: Image? = Image("forwardharmony_logo")
    var logoXScale: Double = 5
    var logoYScale: Double = 5
}

#Preview() {
    struct ForwardHarmonyTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: ForwardHarmonyTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return ForwardHarmonyTheme_Preview()
}
