//
//  AVPTheme.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/23/24.
//

import SwiftUI

struct AVPTheme: Theme {
    var id: Int = 2506
    var name: String = "Atlanta Vocal Project"
    
    private let avpDarkBlue: Color = Color(red: 0.090, green: 0.118, blue: 0.404)
    private let avpLightBlue: Color = Color(red: 0.451, green: 0.604, blue: 0.992)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(avpLightBlue.gradient)
    }
    
    var selectorColor: Color = Color(red: 0.090, green: 0.118, blue: 0.404)
    var selectorTextColor: Color = Color(red: 0.451, green: 0.604, blue: 0.992)
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.090, green: 0.118, blue: 0.404),
        Color(red: 0.090, green: 0.118, blue: 0.404),
        Color(red: 0.090, green: 0.118, blue: 0.404),
        Color(red: 0.090, green: 0.118, blue: 0.404),
        Color(red: 0.090, green: 0.118, blue: 0.404),
        Color(red: 0.090, green: 0.118, blue: 0.404),
        Color(red: 0.090, green: 0.118, blue: 0.404),
        Color(red: 0.090, green: 0.118, blue: 0.404),
        Color(red: 0.090, green: 0.118, blue: 0.404),
        Color(red: 0.090, green: 0.118, blue: 0.404),
        Color(red: 0.090, green: 0.118, blue: 0.404),
        Color(red: 0.090, green: 0.118, blue: 0.404)
    ]
    
    var pitchBackgroundUnselectedColor: [Color] = [
        Color(red: 0.090, green: 0.118, blue: 0.404),
        Color(red: 0.090, green: 0.118, blue: 0.404),
        Color(red: 0.090, green: 0.118, blue: 0.404),
        Color(red: 0.090, green: 0.118, blue: 0.404),
        Color(red: 0.090, green: 0.118, blue: 0.404),
        Color(red: 0.090, green: 0.118, blue: 0.404),
        Color(red: 0.090, green: 0.118, blue: 0.404),
        Color(red: 0.090, green: 0.118, blue: 0.404),
        Color(red: 0.090, green: 0.118, blue: 0.404),
        Color(red: 0.090, green: 0.118, blue: 0.404),
        Color(red: 0.090, green: 0.118, blue: 0.404),
        Color(red: 0.090, green: 0.118, blue: 0.404)
    ]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 1

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
    var pitchTextSelectedColor: Color = Color(red: 0.090, green: 0.118, blue: 0.404)
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("avp_logo")
    var logoXScale: Double = 4
    var logoYScale: Double = 4
}

#Preview() {
    struct AVPTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: AVPTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return AVPTheme_Preview()
}
