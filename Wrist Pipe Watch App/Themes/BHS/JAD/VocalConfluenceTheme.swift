//
//  VocalConfluenceTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/27/24.
//

import SwiftUI

struct VocalConfluenceTheme: Theme {
    var id: Int = 1701
    var name: String = "Vocal Confluence"
    
    private let VCGold: Color = Color(red: 0.8, green: 0.76, blue: 0.6)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.black)
    }
    
    var selectorColor: Color = Color(red: 0.8, green: 0.76, blue: 0.6)
    var selectorTextColor: Color = Color(red: 0.8, green: 0.76, blue: 0.6)
    var selectorBackgroundColor: [Color] = [
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black
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
    
    var logo: Image? = Image("vocalconfluence_logo")
    var logoXScale: Double = 5
    var logoYScale: Double = 5
}

#Preview() {
    struct VocalConfluenceTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: VocalConfluenceTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return VocalConfluenceTheme_Preview()
}
