//
//  HOFTheme.swift
//  Wrist Pipe
//
//  Created by David Freeman on 9/19/24.
//

import SwiftUI

struct HOFTheme: Theme {
    var id: Int = 2704
    var name: String = "Heart of Florida"
    
    var hofBlue: Color = Color(red: 0.063, green: 0.169, blue: 0.251)
    var hofRed: Color = Color(red: 0.933, green: 0.125, blue: 0.051)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(hofBlue.gradient)
    }
    
    var selectorColor: Color = Color(red: 0.933, green: 0.125, blue: 0.051)
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.063, green: 0.169, blue: 0.251),
        Color(red: 0.063, green: 0.169, blue: 0.251),
        Color(red: 0.063, green: 0.169, blue: 0.251),
        Color(red: 0.063, green: 0.169, blue: 0.251),
        Color(red: 0.063, green: 0.169, blue: 0.251),
        Color(red: 0.063, green: 0.169, blue: 0.251),
        Color(red: 0.063, green: 0.169, blue: 0.251),
        Color(red: 0.063, green: 0.169, blue: 0.251),
        Color(red: 0.063, green: 0.169, blue: 0.251),
        Color(red: 0.063, green: 0.169, blue: 0.251),
        Color(red: 0.063, green: 0.169, blue: 0.251),
        Color(red: 0.063, green: 0.169, blue: 0.251)
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
    
    var logo: Image? = Image("hof_logo")
    var logoXScale: Double = 10
    var logoYScale: Double = 10
}

#Preview() {
    struct HOFTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: HOFTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return HOFTheme_Preview()
}
