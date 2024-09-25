//
//  LOLTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 9/18/24.
//

import SwiftUI

struct LOLTheme: Theme {
    var id: Int = 1009
    var name: String = "Land O' Lakes District"
    
    private let LOLRed: Color = Color(red: 0.682, green: 0.067, blue: 0.094)
    private let LOLGold: Color = Color(red: 0.796, green: 0.604, blue: 0.008)
    
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
    var pitchTextUnselectedColor: Color = .black
    var pitchUnselectedOpacity: Double = 0.75
    
    var pitchBackgroundSelectedColor: [Color] = [
        Color(red: 0.682, green: 0.067, blue: 0.094),
        Color(red: 0.796, green: 0.604, blue: 0.008),
        Color(red: 0.682, green: 0.067, blue: 0.094),
        Color(red: 0.796, green: 0.604, blue: 0.008),
        Color(red: 0.682, green: 0.067, blue: 0.094),
        Color(red: 0.796, green: 0.604, blue: 0.008),
        Color(red: 0.682, green: 0.067, blue: 0.094),
        Color(red: 0.796, green: 0.604, blue: 0.008),
        Color(red: 0.682, green: 0.067, blue: 0.094),
        Color(red: 0.796, green: 0.604, blue: 0.008),
        Color(red: 0.682, green: 0.067, blue: 0.094),
        Color(red: 0.796, green: 0.604, blue: 0.008)
    ]
    var pitchTextSelectedColor: Color = .white
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("logo_district_LOL")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview() {
    struct LOLTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: LOLTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return LOLTheme_Preview()
}
