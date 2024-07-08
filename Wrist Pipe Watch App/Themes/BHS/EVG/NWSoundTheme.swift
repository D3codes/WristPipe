//
//  NWSoundTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/27/24.
//

import SwiftUI

struct NWSoundTheme: Theme {
    var id: Int = 1403
    var name: String = "Northwest Sound"
    
    private let gold: Color = Color(red: 0.82, green: 0.69, blue: 0.38)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(gold.gradient)
    }
    
    var selectorColor: Color = .black
    var selectorTextColor: Color = .black
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.82, green: 0.69, blue: 0.38),
        Color(red: 0.82, green: 0.69, blue: 0.38),
        Color(red: 0.82, green: 0.69, blue: 0.38),
        Color(red: 0.82, green: 0.69, blue: 0.38),
        Color(red: 0.82, green: 0.69, blue: 0.38),
        Color(red: 0.82, green: 0.69, blue: 0.38),
        Color(red: 0.82, green: 0.69, blue: 0.38),
        Color(red: 0.82, green: 0.69, blue: 0.38),
        Color(red: 0.82, green: 0.69, blue: 0.38),
        Color(red: 0.82, green: 0.69, blue: 0.38),
        Color(red: 0.82, green: 0.69, blue: 0.38),
        Color(red: 0.82, green: 0.69, blue: 0.38)
    ]
    
    var pitchBackgroundUnselectedColor: [Color] = [
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black
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
    
    var logo: Image? = Image("NWSound_logo")
    var logoXScale: Double = 5
    var logoYScale: Double = 5
}

#Preview() {
    struct NWSoundTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: NWSoundTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return NWSoundTheme_Preview()
}
