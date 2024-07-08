//
//  WTCTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/27/24.
//

import SwiftUI

struct WTCTheme: Theme {
    var id: Int = 1602
    var name: String = "West Towns Chorus"
    
    private let WTCBlue: Color = Color(red: 0.32, green: 0.7, blue: 0.87)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.32, green: 0.7, blue: 0.87).gradient)
    }
    
    var selectorColor: Color = .white
    var selectorTextColor: Color = Color(red: 0.32, green: 0.7, blue: 0.87)
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
        Color(red: 0.32, green: 0.7, blue: 0.87),
        Color(red: 0.32, green: 0.7, blue: 0.87),
        Color(red: 0.32, green: 0.7, blue: 0.87),
        Color(red: 0.32, green: 0.7, blue: 0.87),
        Color(red: 0.32, green: 0.7, blue: 0.87),
        Color(red: 0.32, green: 0.7, blue: 0.87),
        Color(red: 0.32, green: 0.7, blue: 0.87),
        Color(red: 0.32, green: 0.7, blue: 0.87),
        Color(red: 0.32, green: 0.7, blue: 0.87),
        Color(red: 0.32, green: 0.7, blue: 0.87),
        Color(red: 0.32, green: 0.7, blue: 0.87),
        Color(red: 0.32, green: 0.7, blue: 0.87)
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
    var pitchTextSelectedColor: Color = Color(red: 0.32, green: 0.7, blue: 0.87)
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("WTC_logo")
    var logoXScale: Double = 6
    var logoYScale: Double = 6
}

#Preview() {
    struct WTCTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: WTCTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return WTCTheme_Preview()
}
