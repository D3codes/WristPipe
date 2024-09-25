//
//  EVGTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 9/18/24.
//

import SwiftUI

struct EVGTheme: Theme {
    var id: Int = 1005
    var name: String = "Evergreen District"
    
    private let EVGBrown: Color = Color(red: 0.361, green: 0.220, blue: 0.086)
    private let EVGDarkGreen: Color = Color(red: 0.047, green: 0.373, blue: 0.020)
    private let EVGLightGreen: Color = Color(red: 0.729, green: 0.784, blue: 0.667)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(EVGLightGreen)
    }
    
    var selectorColor: Color = Color(red: 0.361, green: 0.220, blue: 0.086)
    var selectorTextColor: Color = Color(red: 0.047, green: 0.373, blue: 0.020)
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.729, green: 0.784, blue: 0.667),
        Color(red: 0.729, green: 0.784, blue: 0.667),
        Color(red: 0.729, green: 0.784, blue: 0.667),
        Color(red: 0.729, green: 0.784, blue: 0.667),
        Color(red: 0.729, green: 0.784, blue: 0.667),
        Color(red: 0.729, green: 0.784, blue: 0.667),
        Color(red: 0.729, green: 0.784, blue: 0.667),
        Color(red: 0.729, green: 0.784, blue: 0.667),
        Color(red: 0.729, green: 0.784, blue: 0.667),
        Color(red: 0.729, green: 0.784, blue: 0.667),
        Color(red: 0.729, green: 0.784, blue: 0.667),
        Color(red: 0.729, green: 0.784, blue: 0.667)
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
    var pitchTextUnselectedColor: Color = .black
    var pitchUnselectedOpacity: Double = 1
    
    var pitchBackgroundSelectedColor: [Color] = [
        Color(red: 0.047, green: 0.373, blue: 0.020),
        Color(red: 0.047, green: 0.373, blue: 0.020),
        Color(red: 0.047, green: 0.373, blue: 0.020),
        Color(red: 0.047, green: 0.373, blue: 0.020),
        Color(red: 0.047, green: 0.373, blue: 0.020),
        Color(red: 0.047, green: 0.373, blue: 0.020),
        Color(red: 0.047, green: 0.373, blue: 0.020),
        Color(red: 0.047, green: 0.373, blue: 0.020),
        Color(red: 0.047, green: 0.373, blue: 0.020),
        Color(red: 0.047, green: 0.373, blue: 0.020),
        Color(red: 0.047, green: 0.373, blue: 0.020),
        Color(red: 0.047, green: 0.373, blue: 0.020)
    ]
    var pitchTextSelectedColor: Color = .white
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("logo_district_EVG")
    var logoXScale: Double = -9.0
    var logoYScale: Double = -9.0
}

#Preview() {
    struct EVGTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: EVGTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return EVGTheme_Preview()
}
