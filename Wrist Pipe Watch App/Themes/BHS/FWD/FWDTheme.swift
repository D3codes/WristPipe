//
//  FWDTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 9/18/24.
//

import SwiftUI

struct FWDTheme: Theme {
    var id: Int = 1006
    var name: String = "Far Western District"
    
    private let FWDGold: Color = Color(red: 0.800, green: 0.651, blue: 0.251)
    private let FWDBlue: Color = Color(red: 0.169, green: 0.231, blue: 0.467)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(FWDBlue)
    }
    
    var selectorColor: Color = Color(red: 0.800, green: 0.651, blue: 0.251)
    var selectorTextColor: Color = Color(red: 0.800, green: 0.651, blue: 0.251)
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.169, green: 0.231, blue: 0.467),
        Color(red: 0.169, green: 0.231, blue: 0.467),
        Color(red: 0.169, green: 0.231, blue: 0.467),
        Color(red: 0.169, green: 0.231, blue: 0.467),
        Color(red: 0.169, green: 0.231, blue: 0.467),
        Color(red: 0.169, green: 0.231, blue: 0.467),
        Color(red: 0.169, green: 0.231, blue: 0.467),
        Color(red: 0.169, green: 0.231, blue: 0.467),
        Color(red: 0.169, green: 0.231, blue: 0.467),
        Color(red: 0.169, green: 0.231, blue: 0.467),
        Color(red: 0.169, green: 0.231, blue: 0.467),
        Color(red: 0.169, green: 0.231, blue: 0.467)
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
        Color(red: 0.800, green: 0.651, blue: 0.251),
        Color(red: 0.800, green: 0.651, blue: 0.251),
        Color(red: 0.800, green: 0.651, blue: 0.251),
        Color(red: 0.800, green: 0.651, blue: 0.251),
        Color(red: 0.800, green: 0.651, blue: 0.251),
        Color(red: 0.800, green: 0.651, blue: 0.251),
        Color(red: 0.800, green: 0.651, blue: 0.251),
        Color(red: 0.800, green: 0.651, blue: 0.251),
        Color(red: 0.800, green: 0.651, blue: 0.251),
        Color(red: 0.800, green: 0.651, blue: 0.251),
        Color(red: 0.800, green: 0.651, blue: 0.251),
        Color(red: 0.800, green: 0.651, blue: 0.251)
    ]
    var pitchTextSelectedColor: Color = .white
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("logo_district_FWD")
    var logoXScale: Double = -12.0
    var logoYScale: Double = -12.0
}

#Preview() {
    struct FWDTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: FWDTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return FWDTheme_Preview()
}
