//
//  TimberTheme.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/14/24.
//

import SwiftUI

struct TimberTheme: Theme {
    var id: Int = 2303
    var name: String = "The Timberliners"
    
    private var TimberGreen: Color = Color(red: 0.000, green: 0.502, blue: 0.212)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(TimberGreen.gradient)
    }
    
    var selectorColor: Color = .white
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.000, green: 0.502, blue: 0.212),
        Color(red: 0.000, green: 0.502, blue: 0.212),
        Color(red: 0.000, green: 0.502, blue: 0.212),
        Color(red: 0.000, green: 0.502, blue: 0.212),
        Color(red: 0.000, green: 0.502, blue: 0.212),
        Color(red: 0.000, green: 0.502, blue: 0.212),
        Color(red: 0.000, green: 0.502, blue: 0.212),
        Color(red: 0.000, green: 0.502, blue: 0.212),
        Color(red: 0.000, green: 0.502, blue: 0.212),
        Color(red: 0.000, green: 0.502, blue: 0.212),
        Color(red: 0.000, green: 0.502, blue: 0.212),
        Color(red: 0.000, green: 0.502, blue: 0.212)
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
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("timber_logo")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview() {
    struct TimberTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: TimberTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return TimberTheme_Preview()
}
