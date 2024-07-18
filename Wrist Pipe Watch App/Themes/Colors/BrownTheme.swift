//
//  BrownTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 7/18/24.
//

import SwiftUI

struct BrownTheme: Theme {
    var id: Int = 8
    var name: String = "Brown"
    
    private let tomboBrown: Color = Color(red: 0.231, green: 0.141, blue: 0.118)
    //private let tomboGold: Color = Color(red: 0.690, green: 0.671, blue: 0.412)
    private let tomboLightGold: Color = Color(red: 0.898, green: 0.878, blue: 0.541)
    private let tomboGold: Color = Color(red: 0.847, green: 0.757, blue: 0.290)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(tomboBrown)
    }

    var selectorColor: Color = .black
    var selectorTextColor: Color = .black
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.847, green: 0.757, blue: 0.290),
        Color(red: 0.847, green: 0.757, blue: 0.290),
        Color(red: 0.847, green: 0.757, blue: 0.290),
        Color(red: 0.847, green: 0.757, blue: 0.290),
        Color(red: 0.847, green: 0.757, blue: 0.290),
        Color(red: 0.847, green: 0.757, blue: 0.290),
        Color(red: 0.847, green: 0.757, blue: 0.290),
        Color(red: 0.847, green: 0.757, blue: 0.290),
        Color(red: 0.847, green: 0.757, blue: 0.290),
        Color(red: 0.847, green: 0.757, blue: 0.290),
        Color(red: 0.847, green: 0.757, blue: 0.290),
        Color(red: 0.847, green: 0.757, blue: 0.290)
    ]

    var pitchBackgroundUnselectedColor: [Color] = [
        Color(red: 0.847, green: 0.757, blue: 0.290),
        Color(red: 0.847, green: 0.757, blue: 0.290),
        Color(red: 0.847, green: 0.757, blue: 0.290),
        Color(red: 0.847, green: 0.757, blue: 0.290),
        Color(red: 0.847, green: 0.757, blue: 0.290),
        Color(red: 0.847, green: 0.757, blue: 0.290),
        Color(red: 0.847, green: 0.757, blue: 0.290),
        Color(red: 0.847, green: 0.757, blue: 0.290),
        Color(red: 0.847, green: 0.757, blue: 0.290),
        Color(red: 0.847, green: 0.757, blue: 0.290),
        Color(red: 0.847, green: 0.757, blue: 0.290),
        Color(red: 0.847, green: 0.757, blue: 0.290)
    ]
    var pitchTextUnselectedColor: Color = .black
    var pitchUnselectedOpacity: Double = 0.8

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
    
    var logo: Image? = nil
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview() {
    struct BrownTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: BrownTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return BrownTheme_Preview()
}
