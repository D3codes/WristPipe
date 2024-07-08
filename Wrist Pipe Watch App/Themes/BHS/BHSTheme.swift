//
//  BHSTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 2/26/24.
//

import SwiftUI

struct BHSTheme: Theme {
    var id: Int = 1000
    var name: String = "BHS"
    
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
    var pitchUnselectedOpacity: Double = 0.8

    var pitchBackgroundSelectedColor: [Color] = [
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
    var pitchTextSelectedColor: Color = .white
    var pitchSelectedOpacity: Double = 0.8
    
    var logo: Image? = Image("BHSlogo")
    var logoXScale: Double = 5
    var logoYScale: Double = 5
}

#Preview() {
    struct BHSTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: BHSTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return BHSTheme_Preview()
}
