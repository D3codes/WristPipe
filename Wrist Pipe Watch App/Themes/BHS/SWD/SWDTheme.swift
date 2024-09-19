//
//  SWDTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 9/18/24.
//

import SwiftUI

struct SWDTheme: Theme {
    var id: Int = 1017
    var name: String = "Southwestern District"
    
    private let SWDPurple: Color = Color(red: 0.243, green: 0.024, blue: 0.478)
    private let SWDGold: Color = Color(red: 0.878, green: 0.937, blue: 0.710)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.white)
    }
    
    var selectorColor: Color = Color(red: 0.243, green: 0.024, blue: 0.478)
    var selectorTextColor: Color = Color(red: 0.243, green: 0.024, blue: 0.478)
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
        Color(red: 0.243, green: 0.024, blue: 0.478),
        Color(red: 0.243, green: 0.024, blue: 0.478),
        Color(red: 0.243, green: 0.024, blue: 0.478),
        Color(red: 0.243, green: 0.024, blue: 0.478),
        Color(red: 0.243, green: 0.024, blue: 0.478),
        Color(red: 0.243, green: 0.024, blue: 0.478),
        Color(red: 0.243, green: 0.024, blue: 0.478),
        Color(red: 0.243, green: 0.024, blue: 0.478),
        Color(red: 0.243, green: 0.024, blue: 0.478),
        Color(red: 0.243, green: 0.024, blue: 0.478),
        Color(red: 0.243, green: 0.024, blue: 0.478),
        Color(red: 0.243, green: 0.024, blue: 0.478)
    ]
    var pitchTextUnselectedColor: Color = Color(red: 0.878, green: 0.937, blue: 0.710)
    var pitchUnselectedOpacity: Double = 1
    
    var pitchBackgroundSelectedColor: [Color] = [
        Color(red: 0.878, green: 0.937, blue: 0.710),
        Color(red: 0.878, green: 0.937, blue: 0.710),
        Color(red: 0.878, green: 0.937, blue: 0.710),
        Color(red: 0.878, green: 0.937, blue: 0.710),
        Color(red: 0.878, green: 0.937, blue: 0.710),
        Color(red: 0.878, green: 0.937, blue: 0.710),
        Color(red: 0.878, green: 0.937, blue: 0.710),
        Color(red: 0.878, green: 0.937, blue: 0.710),
        Color(red: 0.878, green: 0.937, blue: 0.710),
        Color(red: 0.878, green: 0.937, blue: 0.710),
        Color(red: 0.878, green: 0.937, blue: 0.710),
        Color(red: 0.878, green: 0.937, blue: 0.710)
    ]
    var pitchTextSelectedColor: Color = Color(red: 0.243, green: 0.024, blue: 0.478)
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("logo_district_SWD")
    var logoXScale: Double = 10.0
    var logoYScale: Double = 10.0
}

#Preview() {
    struct SWDTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: SWDTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return SWDTheme_Preview()
}
