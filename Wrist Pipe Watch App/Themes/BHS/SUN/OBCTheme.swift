//
//  OBCTheme.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/17/24.
//

import SwiftUI

struct OBCTheme: Theme {
    var id: Int = 2701
    var name: String = "Orange Blossom Chorus"
    
    var obcOrange: Color = Color(red: 0.945, green: 0.349, blue: 0.173)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.white)
    }
    
    var selectorColor: Color = Color(red: 0.945, green: 0.349, blue: 0.173)
    var selectorTextColor: Color = Color(red: 0.945, green: 0.349, blue: 0.173)
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
        Color(red: 0.945, green: 0.349, blue: 0.173),
        Color(red: 0.945, green: 0.349, blue: 0.173),
        Color(red: 0.945, green: 0.349, blue: 0.173),
        Color(red: 0.945, green: 0.349, blue: 0.173),
        Color(red: 0.945, green: 0.349, blue: 0.173),
        Color(red: 0.945, green: 0.349, blue: 0.173),
        Color(red: 0.945, green: 0.349, blue: 0.173),
        Color(red: 0.945, green: 0.349, blue: 0.173),
        Color(red: 0.945, green: 0.349, blue: 0.173),
        Color(red: 0.945, green: 0.349, blue: 0.173),
        Color(red: 0.945, green: 0.349, blue: 0.173),
        Color(red: 0.945, green: 0.349, blue: 0.173)
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
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("obc_logo")
    var logoXScale: Double = 15
    var logoYScale: Double = 15
}

#Preview() {
    struct OBCTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: OBCTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return OBCTheme_Preview()
}
