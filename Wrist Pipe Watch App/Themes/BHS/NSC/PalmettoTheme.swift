//
//  PalmettoTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/26/24.
//

import SwiftUI

struct PalmettoTheme: Theme {
    var id: Int = 1200
    var name: String = "Palmetto Vocal Project"
    
    private let PVPred = Color(red: 0.63, green: 0.16, blue: 0.15)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.white)
    }
    
    var selectorColor: Color = .black
    var selectorTextColor: Color = Color(red: 0.63, green: 0.16, blue: 0.15)
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
        Color(red: 0.64, green: 0.16, blue: 0.15),
        Color(red: 0.64, green: 0.16, blue: 0.15),
        Color(red: 0.64, green: 0.16, blue: 0.15),
        Color(red: 0.64, green: 0.16, blue: 0.15),
        Color(red: 0.64, green: 0.16, blue: 0.15),
        Color(red: 0.64, green: 0.16, blue: 0.15),
        Color(red: 0.64, green: 0.16, blue: 0.15),
        Color(red: 0.64, green: 0.16, blue: 0.15),
        Color(red: 0.64, green: 0.16, blue: 0.15),
        Color(red: 0.64, green: 0.16, blue: 0.15),
        Color(red: 0.64, green: 0.16, blue: 0.15),
        Color(red: 0.64, green: 0.16, blue: 0.15)
    ]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 1.0
    
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
    var pitchTextSelectedColor: Color = .black
    var pitchSelectedOpacity: Double = 0.7
    
    var logo: Image? = Image("PVP_logo")
    var logoXScale: Double = 4.0
    var logoYScale: Double = 4.0
}

#Preview() {
    struct PalmettoTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: PalmettoTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return PalmettoTheme_Preview()
}
