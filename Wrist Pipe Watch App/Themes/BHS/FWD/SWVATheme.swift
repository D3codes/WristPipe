//
//  SWVATheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 6/23/24.
//

import SwiftUI

struct SWVATheme: Theme {
    var id: Int = 1504
    var name: String = "Southwest Vocal Alliance"
    
    private let SWVABlue: Color = Color(red: 0.133, green: 0.294, blue: 0.518)
    private let SWVAGold: Color = Color(red: 0.933, green: 0.855, blue: 0.518)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.white)
    }
    
    var selectorColor: Color = Color(red: 0.933, green: 0.855, blue: 0.518)
    var selectorTextColor: Color = Color(red: 0.133, green: 0.294, blue: 0.518)
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
        Color(red: 0.133, green: 0.294, blue: 0.518),
        Color(red: 0.133, green: 0.294, blue: 0.518),
        Color(red: 0.133, green: 0.294, blue: 0.518),
        Color(red: 0.133, green: 0.294, blue: 0.518),
        Color(red: 0.133, green: 0.294, blue: 0.518),
        Color(red: 0.133, green: 0.294, blue: 0.518),
        Color(red: 0.133, green: 0.294, blue: 0.518),
        Color(red: 0.133, green: 0.294, blue: 0.518),
        Color(red: 0.133, green: 0.294, blue: 0.518),
        Color(red: 0.133, green: 0.294, blue: 0.518),
        Color(red: 0.133, green: 0.294, blue: 0.518),
        Color(red: 0.133, green: 0.294, blue: 0.518)
    ]
    var pitchTextUnselectedColor: Color = .white
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
    var pitchSelectedOpacity: Double = 0.9
    
    var logo: Image? = Image("swva_logo")
    var logoXScale: Double = 3
    var logoYScale: Double = 3
}

#Preview() {
    struct SWVATheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: SWVATheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return SWVATheme_Preview()
}
