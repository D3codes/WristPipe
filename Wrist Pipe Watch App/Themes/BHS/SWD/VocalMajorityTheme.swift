//
//  VocalMajorityTheme.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/17/24.
//

import SwiftUI

struct VocalMajorityTheme: Theme {
    var id: Int = 2605
    var name: String = "Vocal Majority"
    
    var vocalMajorityGold: Color = Color(red: 0.761, green: 0.678, blue: 0.337)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.black)
    }
    
    var selectorColor: Color = Color(red: 0.761, green: 0.678, blue: 0.337)
    var selectorTextColor: Color = Color(red: 0.761, green: 0.678, blue: 0.337)
    var selectorBackgroundColor: [Color] = [
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
    
    var logo: Image? = Image("vocalmajority_logo")
    var logoXScale: Double = 10
    var logoYScale: Double = 10
}

#Preview() {
    struct VocalMajorityTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: VocalMajorityTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return VocalMajorityTheme_Preview()
}
