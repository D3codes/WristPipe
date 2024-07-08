//
//  BOCTheme.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/17/24.
//

import SwiftUI

struct BOCTheme: Theme {
    var id: Int = 2700
    var name: String = "Big Orange Chorus"
    
    var bocOrange: Color = Color(red: 0.976, green: 0.635, blue: 0.086)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(bocOrange.gradient)
    }
    
    var selectorColor: Color = .white
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.976, green: 0.635, blue: 0.086),
        Color(red: 0.976, green: 0.635, blue: 0.086),
        Color(red: 0.976, green: 0.635, blue: 0.086),
        Color(red: 0.976, green: 0.635, blue: 0.086),
        Color(red: 0.976, green: 0.635, blue: 0.086),
        Color(red: 0.976, green: 0.635, blue: 0.086),
        Color(red: 0.976, green: 0.635, blue: 0.086),
        Color(red: 0.976, green: 0.635, blue: 0.086),
        Color(red: 0.976, green: 0.635, blue: 0.086),
        Color(red: 0.976, green: 0.635, blue: 0.086),
        Color(red: 0.976, green: 0.635, blue: 0.086),
        Color(red: 0.976, green: 0.635, blue: 0.086)
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
    var pitchTextSelectedColor: Color = .black
    var pitchSelectedOpacity: Double = 0.8
    
    var logo: Image? = Image("boc_logo")
    var logoXScale: Double = 5
    var logoYScale: Double = 5
}

#Preview() {
    struct BOCTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: BOCTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return BOCTheme_Preview()
}
