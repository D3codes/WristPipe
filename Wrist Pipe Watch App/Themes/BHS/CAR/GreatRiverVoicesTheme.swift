//
//  GreatRiverVoicesTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/26/24.
//

import SwiftUI

struct GreatRiverVoicesTheme: Theme {
    var id: Int = 1100
    var name: String = "Great River Voices"
    
    private let gradientStart: Color = Color(red: 0.37, green: 0.19, blue: 0.55)
    private let gradientEnd: Color = Color(red: 0.25, green: 0.55, blue: 0.52)
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(LinearGradient(gradient: Gradient(colors: [gradientStart, gradientEnd]), startPoint: .top, endPoint: .bottom))
    }
    
    var selectorColor: Color = .white
    var selectorTextColor: Color = Color(red: 0.37, green: 0.19, blue: 0.55)
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
    
    var logo: Image? = Image("GRV_logo")
    var logoXScale: Double = 5.0
    var logoYScale: Double = 5.0
}

#Preview() {
    struct GreatRiverVoicesTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: GreatRiverVoicesTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return GreatRiverVoicesTheme_Preview()
}
