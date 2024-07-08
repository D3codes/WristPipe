//
//  HarmonyLeagueTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 4/20/24.
//

import SwiftUI

struct HarmonyLeagueTheme: Theme {
    var id: Int = 2100
    var name: String = "The Harmony League"
    
    private var HLBlue: Color = Color(red: 0.294, green: 0.369, blue: 0.553)
    private var HLGold: Color = Color(red: 0.953, green: 0.737, blue: 0.361)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(HLBlue)
    }
    
    var selectorColor: Color = Color(red: 0.953, green: 0.737, blue: 0.361)
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [
        Color(red: 0.294, green: 0.369, blue: 0.553),
        Color(red: 0.294, green: 0.369, blue: 0.553),
        Color(red: 0.294, green: 0.369, blue: 0.553),
        Color(red: 0.294, green: 0.369, blue: 0.553),
        Color(red: 0.294, green: 0.369, blue: 0.553),
        Color(red: 0.294, green: 0.369, blue: 0.553),
        Color(red: 0.294, green: 0.369, blue: 0.553),
        Color(red: 0.294, green: 0.369, blue: 0.553),
        Color(red: 0.294, green: 0.369, blue: 0.553),
        Color(red: 0.294, green: 0.369, blue: 0.553),
        Color(red: 0.294, green: 0.369, blue: 0.553),
        Color(red: 0.294, green: 0.369, blue: 0.553)
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
    
    var logo: Image? = Image("hl_logo")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview() {
    struct HarmonyLeagueTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: HarmonyLeagueTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return HarmonyLeagueTheme_Preview()
}
