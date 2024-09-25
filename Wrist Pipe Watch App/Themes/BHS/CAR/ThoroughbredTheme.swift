//
//  ThoroughbredTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/26/24.
//

import SwiftUI

struct ThoroughbredTheme: Theme {
    var id: Int = 1102
    var name: String = "The Thoroughbreds"
    
    private let thoroughbredBrown: Color = Color(red: 0.91, green: 0.89, blue: 0.81)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(thoroughbredBrown)
    }
    
    var selectorColor: Color = .brown
    var selectorTextColor: Color = .black
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.91, green: 0.89, blue: 0.81),
        Color(red: 0.91, green: 0.89, blue: 0.81),
        Color(red: 0.91, green: 0.89, blue: 0.81),
        Color(red: 0.91, green: 0.89, blue: 0.81),
        Color(red: 0.91, green: 0.89, blue: 0.81),
        Color(red: 0.91, green: 0.89, blue: 0.81),
        Color(red: 0.91, green: 0.89, blue: 0.81),
        Color(red: 0.91, green: 0.89, blue: 0.81),
        Color(red: 0.91, green: 0.89, blue: 0.81),
        Color(red: 0.91, green: 0.89, blue: 0.81),
        Color(red: 0.91, green: 0.89, blue: 0.81),
        Color(red: 0.91, green: 0.89, blue: 0.81)
    ]
    
    var pitchBackgroundUnselectedColor: [Color] = [
        .brown,
        .brown,
        .brown,
        .brown,
        .brown,
        .brown,
        .brown,
        .brown,
        .brown,
        .brown,
        .brown,
        .brown
    ]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 0.9
    
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
    
    var logo: Image? = Image("thoroughbred_logo")
    var logoXScale: Double = 0.0
    var logoYScale: Double = 0.0
}

#Preview() {
    struct ThoroughbredTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: ThoroughbredTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return ThoroughbredTheme_Preview()
}
