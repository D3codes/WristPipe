//
//  NBCTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 4/20/24.
//

import SwiftUI

struct NBCTheme: Theme {
    var id: Int = 2003
    var name: String = "Narragansett Bay Chorus"
    
    private var NBCBlue: Color = Color(red: 0.180, green: 0.192, blue: 0.576)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.white)
    }
    
    var selectorColor: Color = Color(red: 0.180, green: 0.192, blue: 0.576)
    var selectorTextColor: Color = Color(red: 0.180, green: 0.192, blue: 0.576)
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
    var pitchTextUnselectedColor: Color = .black
    var pitchUnselectedOpacity: Double = 1
    
    var pitchBackgroundSelectedColor: [Color] = [
        Color(red: 0.180, green: 0.192, blue: 0.576),
        Color(red: 0.180, green: 0.192, blue: 0.576),
        Color(red: 0.180, green: 0.192, blue: 0.576),
        Color(red: 0.180, green: 0.192, blue: 0.576),
        Color(red: 0.180, green: 0.192, blue: 0.576),
        Color(red: 0.180, green: 0.192, blue: 0.576),
        Color(red: 0.180, green: 0.192, blue: 0.576),
        Color(red: 0.180, green: 0.192, blue: 0.576),
        Color(red: 0.180, green: 0.192, blue: 0.576),
        Color(red: 0.180, green: 0.192, blue: 0.576),
        Color(red: 0.180, green: 0.192, blue: 0.576),
        Color(red: 0.180, green: 0.192, blue: 0.576)
    ]
    var pitchTextSelectedColor: Color = .white
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("NBC_Logo")
    var logoXScale: Double = 5
    var logoYScale: Double = 5
}

#Preview() {
    struct NBCTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: NBCTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return NBCTheme_Preview()
}
