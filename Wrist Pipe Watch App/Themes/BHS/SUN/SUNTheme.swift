//
//  SUNTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 9/18/24.
//

import SwiftUI

struct SUNTheme: Theme {
    var id: Int = 1018
    var name: String = "Sunshine District"
    
    private let SUNYellow: Color = Color(red: 0.980, green: 0.882, blue: 0.000)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.white)
    }
    
    var selectorColor: Color = Color(red: 0.980, green: 0.882, blue: 0.000)
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
        Color(red: 0.980, green: 0.882, blue: 0.000),
        Color(red: 0.980, green: 0.882, blue: 0.000),
        Color(red: 0.980, green: 0.882, blue: 0.000),
        Color(red: 0.980, green: 0.882, blue: 0.000),
        Color(red: 0.980, green: 0.882, blue: 0.000),
        Color(red: 0.980, green: 0.882, blue: 0.000),
        Color(red: 0.980, green: 0.882, blue: 0.000),
        Color(red: 0.980, green: 0.882, blue: 0.000),
        Color(red: 0.980, green: 0.882, blue: 0.000),
        Color(red: 0.980, green: 0.882, blue: 0.000),
        Color(red: 0.980, green: 0.882, blue: 0.000),
        Color(red: 0.980, green: 0.882, blue: 0.000)
    ]
    var pitchTextUnselectedColor: Color = .black
    var pitchUnselectedOpacity: Double = 1
    
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
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("logo_district_SUN")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview() {
    struct SUNTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: SUNTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return SUNTheme_Preview()
}
