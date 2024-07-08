//
//  CCCTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 4/21/24.
//

import SwiftUI

struct CCCTheme: Theme {
    var id: Int = 2102
    var name: String = "Capital City Chorus"
    
    private var CCCRed: Color = Color(red: 0.792, green: 0.012, blue: 0.012)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.black.gradient)
    }
    
    var selectorColor: Color = .white
    var selectorTextColor: Color = .white
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
    var pitchTextSelectedColor: Color = Color(red: 0.792, green: 0.012, blue: 0.012)
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("ccc_logo")
    var logoXScale: Double = 10
    var logoYScale: Double = 10
}

#Preview() {
    struct CCCTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: CCCTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return CCCTheme_Preview()
}
