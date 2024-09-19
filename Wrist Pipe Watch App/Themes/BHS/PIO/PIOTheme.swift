//
//  PIOTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 9/18/24.
//

import SwiftUI

struct PIOTheme: Theme {
    var id: Int = 1013
    var name: String = "Pioneer District"
    
    private let PIOBlue: Color = Color(red: 0.404, green: 0.690, blue: 0.659)
    private let PIOGreen: Color = Color(red: 0.792, green: 0.859, blue: 0.416)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(LinearGradient(colors: [PIOBlue, PIOGreen], startPoint: .top, endPoint: .bottom))
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
    var pitchSelectedOpacity: Double = 0.8
    
    var logo: Image? = Image("logo_district_PIO")
    var logoXScale: Double = -2.0
    var logoYScale: Double = -2.0
}

#Preview() {
    struct PIOTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: PIOTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return PIOTheme_Preview()
}
