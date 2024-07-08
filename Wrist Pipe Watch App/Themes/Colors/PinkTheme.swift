//
//  PinkTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 6/13/24.
//

import SwiftUI

struct PinkTheme: Theme {
    var id: Int = 7
    var name: String = "Pink"
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.pink.gradient)
    }

    var selectorColor: Color = .white
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [
        .pink,
        .pink,
        .pink,
        .pink,
        .pink,
        .pink,
        .pink,
        .pink,
        .pink,
        .pink,
        .pink,
        .pink
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
    var pitchSelectedOpacity: Double = 0.8
    
    var logo: Image? = nil
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview() {
    struct PinkTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: PinkTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return PinkTheme_Preview()
}
