//
//  GPHTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/28/24.
//

import SwiftUI

struct GPHTheme: Theme {
    var id: Int = 1804
    var name: String = "Great Plains Harmony"
    
    private let gradientStart: Color = Color(red: 0.19, green: 0.06, blue: 0.39)
    private let gradientEnd: Color = Color(red: 0.38, green: 0.75, blue: 0.78)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(LinearGradient(colors: [gradientStart, gradientEnd], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
    
    var selectorColor: Color = .white
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [
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
    var pitchTextSelectedColor: Color = Color(red: 0.19, green: 0.19, blue: 0.54)
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("GPH_logo")
    var logoXScale: Double = 10
    var logoYScale: Double = 10
}

#Preview() {
    struct GPHTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: GPHTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return GPHTheme_Preview()
}
