//
//  MVTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 9/19/24.
//

import SwiftUI

struct MVTheme: Theme {
    var id: Int = 1904
    var name: String = "Metro Voices"
    
    private let MVGreen: Color = Color(red: 0.075, green: 0.349, blue: 0.400)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(MVGreen)
    }
    
    var selectorColor: Color = .white
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.075, green: 0.349, blue: 0.400),
        Color(red: 0.075, green: 0.349, blue: 0.400),
        Color(red: 0.075, green: 0.349, blue: 0.400),
        Color(red: 0.075, green: 0.349, blue: 0.400),
        Color(red: 0.075, green: 0.349, blue: 0.400),
        Color(red: 0.075, green: 0.349, blue: 0.400),
        Color(red: 0.075, green: 0.349, blue: 0.400),
        Color(red: 0.075, green: 0.349, blue: 0.400),
        Color(red: 0.075, green: 0.349, blue: 0.400),
        Color(red: 0.075, green: 0.349, blue: 0.400),
        Color(red: 0.075, green: 0.349, blue: 0.400),
        Color(red: 0.075, green: 0.349, blue: 0.400)
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
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("metrovoices_logo")
    var logoXScale: Double = 8
    var logoYScale: Double = 8
}

#Preview() {
    struct MVTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: MVTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return MVTheme_Preview()
}

