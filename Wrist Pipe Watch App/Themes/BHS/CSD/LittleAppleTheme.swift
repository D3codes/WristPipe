//
//  LittleAppleTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/26/24.
//

import SwiftUI

struct LittleAppleTheme: Theme {
    var id: Int = 1305
    var name: String = "Little Apple Chorus"
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.red.gradient)
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
        .green,
        .green,
        .green,
        .green,
        .green,
        .green,
        .green,
        .green,
        .green,
        .green,
        .green,
        .green
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
    
    var logo: Image? = Image("littleapple_logo")
    var logoXScale: Double = 5
    var logoYScale: Double = 5
}

#Preview() {
    struct LittleAppleTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: LittleAppleTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return LittleAppleTheme_Preview()
}
