//
//  CARTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 9/18/24.
//

import SwiftUI

struct CARTheme: Theme {
    var id: Int = 1002
    var name: String = "Cardinal District"
    
    private let CARRed: Color = Color(red: 0.929, green: 0.106, blue: 0.255)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.white)
    }
    
    var selectorColor: Color = .black
    var selectorTextColor: Color = Color(red: 0.929, green: 0.106, blue: 0.255)
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
        Color(red: 0.929, green: 0.106, blue: 0.255),
        Color(red: 0.929, green: 0.106, blue: 0.255),
        Color(red: 0.929, green: 0.106, blue: 0.255),
        Color(red: 0.929, green: 0.106, blue: 0.255),
        Color(red: 0.929, green: 0.106, blue: 0.255),
        Color(red: 0.929, green: 0.106, blue: 0.255),
        Color(red: 0.929, green: 0.106, blue: 0.255),
        Color(red: 0.929, green: 0.106, blue: 0.255),
        Color(red: 0.929, green: 0.106, blue: 0.255),
        Color(red: 0.929, green: 0.106, blue: 0.255),
        Color(red: 0.929, green: 0.106, blue: 0.255),
        Color(red: 0.929, green: 0.106, blue: 0.255)
    ]
    var pitchTextSelectedColor: Color = .white
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("logo_district_CAR")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview() {
    struct CARTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: CARTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return CARTheme_Preview()
}
