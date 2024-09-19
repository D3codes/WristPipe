//
//  RMDTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 9/18/24.
//

import SwiftUI

struct RMDTheme: Theme {
    var id: Int = 1014
    var name: String = "Rocky Mountain District"
    
    private let RMDGold: Color = Color(red: 0.992, green: 0.804, blue: 0.220)
    private let RMDBlue: Color = Color(red: 0.196, green: 0.310, blue: 0.631)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(RMDBlue.gradient)
    }
    
    var selectorColor: Color = Color(red: 0.992, green: 0.804, blue: 0.220)
    var selectorTextColor: Color = Color(red: 0.992, green: 0.804, blue: 0.220)
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.196, green: 0.310, blue: 0.631),
        Color(red: 0.196, green: 0.310, blue: 0.631),
        Color(red: 0.196, green: 0.310, blue: 0.631),
        Color(red: 0.196, green: 0.310, blue: 0.631),
        Color(red: 0.196, green: 0.310, blue: 0.631),
        Color(red: 0.196, green: 0.310, blue: 0.631),
        Color(red: 0.196, green: 0.310, blue: 0.631),
        Color(red: 0.196, green: 0.310, blue: 0.631),
        Color(red: 0.196, green: 0.310, blue: 0.631),
        Color(red: 0.196, green: 0.310, blue: 0.631),
        Color(red: 0.196, green: 0.310, blue: 0.631),
        Color(red: 0.196, green: 0.310, blue: 0.631)
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
    
    var logo: Image? = Image("logo_district_RMD")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview() {
    struct RMDTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: RMDTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return RMDTheme_Preview()
}
