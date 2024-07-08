//
//  MarcsmenTheme.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/17/24.
//

import SwiftUI

struct MarcsmenTheme: Theme {
    var id: Int = 2604
    var name: String = "The Marcsmen"
    
    var marcsmenRed: Color = Color(red: 0.537, green: 0.067, blue: 0.071)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(marcsmenRed.gradient)
    }
    
    var selectorColor: Color = .black
    var selectorTextColor: Color = Color(red: 0.537, green: 0.067, blue: 0.071)
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
    var pitchSelectedOpacity: Double = 1.0
    
    var logo: Image? = Image("marcsmen_logo")
    var logoXScale: Double = 5
    var logoYScale: Double = 5
}

#Preview() {
    struct MarcsmenTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: MarcsmenTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return MarcsmenTheme_Preview()
}
