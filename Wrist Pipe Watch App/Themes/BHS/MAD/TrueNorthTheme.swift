//
//  TrueNorthTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 4/7/25.
//

import SwiftUI

struct TrueNorthTheme: Theme {
    var id: Int = 1906
    var name: String = "True North Chorus"
    
    private let SirensRed: Color = Color(red: 0.929, green: 0.129, blue: 0.235, opacity: 1.000)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center))
    }
    
    var selectorColor: Color = .white
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .purple,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .purple
    ]
    
    var pitchBackgroundUnselectedColor: [Color] = [
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .purple,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .purple
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
    
    var logo: Image? = Image("truenorth_logo")
    var logoXScale: Double = 8
    var logoYScale: Double = 8
}

#Preview() {
    struct TrueNorthTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: TrueNorthTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return TrueNorthTheme_Preview()
}
