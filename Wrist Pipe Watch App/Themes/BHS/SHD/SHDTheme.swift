//
//  SHDTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 9/18/24.
//

import SwiftUI

struct SHDTheme: Theme {
    var id: Int = 1016
    var name: String = "Southeastern Harmony District"
    
    private let SHDTan: Color = Color(red: 1.000, green: 0.976, blue: 0.894)
    private let SHDRed: Color = Color(red: 0.765, green: 0.271, blue: 0.180)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(SHDTan)
    }
    
    var selectorColor: Color = .black
    var selectorTextColor: Color = .black
    var selectorBackgroundColor: [Color] = [
        Color(red: 1.000, green: 0.976, blue: 0.894),
        Color(red: 1.000, green: 0.976, blue: 0.894),
        Color(red: 1.000, green: 0.976, blue: 0.894),
        Color(red: 1.000, green: 0.976, blue: 0.894),
        Color(red: 1.000, green: 0.976, blue: 0.894),
        Color(red: 1.000, green: 0.976, blue: 0.894),
        Color(red: 1.000, green: 0.976, blue: 0.894),
        Color(red: 1.000, green: 0.976, blue: 0.894),
        Color(red: 1.000, green: 0.976, blue: 0.894),
        Color(red: 1.000, green: 0.976, blue: 0.894),
        Color(red: 1.000, green: 0.976, blue: 0.894),
        Color(red: 1.000, green: 0.976, blue: 0.894)
    ]
    
    var pitchBackgroundUnselectedColor: [Color] = [
        .gray,
        .gray,
        .gray,
        .gray,
        .gray,
        .gray,
        .gray,
        .gray,
        .gray,
        .gray,
        .gray,
        .gray
    ]
    var pitchTextUnselectedColor: Color = .black
    var pitchUnselectedOpacity: Double = 0.75
    
    var pitchBackgroundSelectedColor: [Color] = [
        Color(red: 0.765, green: 0.271, blue: 0.180),
        Color(red: 0.765, green: 0.271, blue: 0.180),
        Color(red: 0.765, green: 0.271, blue: 0.180),
        Color(red: 0.765, green: 0.271, blue: 0.180),
        Color(red: 0.765, green: 0.271, blue: 0.180),
        Color(red: 0.765, green: 0.271, blue: 0.180),
        Color(red: 0.765, green: 0.271, blue: 0.180),
        Color(red: 0.765, green: 0.271, blue: 0.180),
        Color(red: 0.765, green: 0.271, blue: 0.180),
        Color(red: 0.765, green: 0.271, blue: 0.180),
        Color(red: 0.765, green: 0.271, blue: 0.180),
        Color(red: 0.765, green: 0.271, blue: 0.180)
    ]
    var pitchTextSelectedColor: Color = .white
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("logo_district_SHD")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview() {
    struct SHDTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: SHDTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return SHDTheme_Preview()
}
