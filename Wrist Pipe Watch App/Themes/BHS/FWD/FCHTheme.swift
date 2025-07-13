//
//  FCHTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 6/29/25.
//

import SwiftUI

struct FCHTheme: Theme {
    var id: Int = 1506
    var name: String = "Fog City Harmonia"
    
    private let pchRed: Color = Color(red: 0.800, green: 0.008, blue: 0.149)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.800, green: 0.008, blue: 0.149))
    }
    
    var selectorColor: Color = .white
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.800, green: 0.008, blue: 0.149),
        Color(red: 0.800, green: 0.008, blue: 0.149),
        Color(red: 0.800, green: 0.008, blue: 0.149),
        Color(red: 0.800, green: 0.008, blue: 0.149),
        Color(red: 0.800, green: 0.008, blue: 0.149),
        Color(red: 0.800, green: 0.008, blue: 0.149),
        Color(red: 0.800, green: 0.008, blue: 0.149),
        Color(red: 0.800, green: 0.008, blue: 0.149),
        Color(red: 0.800, green: 0.008, blue: 0.149),
        Color(red: 0.800, green: 0.008, blue: 0.149),
        Color(red: 0.800, green: 0.008, blue: 0.149),
        Color(red: 0.800, green: 0.008, blue: 0.149)
    ]
    
    var pitchBackgroundUnselectedColor: [Color] = [
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
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 0.7

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
    var pitchTextSelectedColor: Color = Color(red: 0.800, green: 0.008, blue: 0.149)
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("FCH_logo")
    var logoXScale: Double = 5
    var logoYScale: Double = 5
}

#Preview() {
    struct FCHTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: FCHTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return FCHTheme_Preview()
}
