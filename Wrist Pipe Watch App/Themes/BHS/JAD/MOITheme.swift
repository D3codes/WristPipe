//
//  MOITheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/27/24.
//

import SwiftUI

struct MOITheme: Theme {
    var id: Int = 1703
    var name: String = "Men of Independence"
    
    private let MOIRed: Color = Color(red: 0.56, green: 0.12, blue: 0.1)
    private let MOIBlue: Color = Color(red: 0.17, green: 0.22, blue: 0.54)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                LinearGradient(stops: [
                    Gradient.Stop(color: .white, location: 0),
                    Gradient.Stop(color: MOIBlue, location: 0.01),
                    Gradient.Stop(color: MOIBlue, location: 0.09),
                    Gradient.Stop(color: .white, location: 0.1),
                    Gradient.Stop(color: .white, location: 0.19),
                    Gradient.Stop(color: MOIRed, location: 0.2),
                    Gradient.Stop(color: MOIRed, location: 0.29),
                    Gradient.Stop(color: .white, location: 0.3),
                    Gradient.Stop(color: .white, location: 0.39),
                    Gradient.Stop(color: MOIBlue, location: 0.4),
                    Gradient.Stop(color: MOIBlue, location: 0.49),
                    Gradient.Stop(color: .white, location: 0.5),
                    Gradient.Stop(color: .white, location: 0.59),
                    Gradient.Stop(color: MOIRed, location: 0.6),
                    Gradient.Stop(color: MOIRed, location: 0.69),
                    Gradient.Stop(color: .white, location: 0.7),
                    Gradient.Stop(color: .white, location: 0.79),
                    Gradient.Stop(color: MOIBlue, location: 0.8),
                    Gradient.Stop(color: MOIBlue, location: 0.89),
                    Gradient.Stop(color: .white, location: 0.9),
                    Gradient.Stop(color: .white, location: 0.99),
                    Gradient.Stop(color: MOIRed, location: 1),
                ], startPoint: .topLeading, endPoint: .bottomTrailing)
            )
    }
    
    var selectorColor: Color = .black
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.56, green: 0.12, blue: 0.11),
        Color(red: 0.56, green: 0.12, blue: 0.11),
        Color(red: 0.56, green: 0.12, blue: 0.11),
        Color(red: 0.56, green: 0.12, blue: 0.11),
        Color(red: 0.56, green: 0.12, blue: 0.11),
        Color(red: 0.56, green: 0.12, blue: 0.11),
        Color(red: 0.56, green: 0.12, blue: 0.11),
        Color(red: 0.56, green: 0.12, blue: 0.11),
        Color(red: 0.56, green: 0.12, blue: 0.11),
        Color(red: 0.56, green: 0.12, blue: 0.11),
        Color(red: 0.56, green: 0.12, blue: 0.11),
        Color(red: 0.56, green: 0.12, blue: 0.11)
    ]
    
    var pitchBackgroundUnselectedColor: [Color] = [
        Color(red: 0.56, green: 0.12, blue: 0.11),
        Color(red: 0.17, green: 0.22, blue: 0.54),
        Color(red: 0.56, green: 0.12, blue: 0.11),
        Color(red: 0.17, green: 0.22, blue: 0.54),
        Color(red: 0.56, green: 0.12, blue: 0.11),
        Color(red: 0.17, green: 0.22, blue: 0.54),
        Color(red: 0.56, green: 0.12, blue: 0.11),
        Color(red: 0.17, green: 0.22, blue: 0.54),
        Color(red: 0.56, green: 0.12, blue: 0.11),
        Color(red: 0.17, green: 0.22, blue: 0.54),
        Color(red: 0.56, green: 0.12, blue: 0.11),
        Color(red: 0.17, green: 0.22, blue: 0.54)
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
    var pitchSelectedOpacity: Double = 0.9
    
    var logo: Image? = Image("MOI_logo")
    var logoXScale: Double = 4
    var logoYScale: Double = 4
}

#Preview() {
    struct MOITheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: MOITheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return MOITheme_Preview()
}
