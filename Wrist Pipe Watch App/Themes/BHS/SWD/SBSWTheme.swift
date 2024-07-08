//
//  SBSWTheme.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/23/24.
//

import SwiftUI

struct SBSWTheme: Theme {
    var id: Int = 2606
    var name: String = "Sound by Southwest"
    
    private let sbswOrange: Color = Color(red: 0.906, green: 0.310, blue: 0.012)
    private let sbswBlue: Color = Color(red: 0.137, green: 0.216, blue: 0.843)
    private let sbswPurple: Color = Color(red: 0.337, green: 0.180, blue: 0.518)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.black)
    }
    
    var selectorColor: Color = .white
    var selectorTextColor: Color = .white
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
        Color(red: 0.337, green: 0.180, blue: 0.518),
        Color(red: 0.137, green: 0.216, blue: 0.843),
        Color(red: 0.906, green: 0.310, blue: 0.012),
        Color(red: 0.337, green: 0.180, blue: 0.518),
        Color(red: 0.137, green: 0.216, blue: 0.843),
        Color(red: 0.906, green: 0.310, blue: 0.012),
        Color(red: 0.337, green: 0.180, blue: 0.518),
        Color(red: 0.137, green: 0.216, blue: 0.843),
        Color(red: 0.906, green: 0.310, blue: 0.012),
        Color(red: 0.337, green: 0.180, blue: 0.518),
        Color(red: 0.137, green: 0.216, blue: 0.843),
        Color(red: 0.906, green: 0.310, blue: 0.012)
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
    
    var logo: Image? = Image("sbsw_logo")
    var logoXScale: Double = 5
    var logoYScale: Double = 5
}

#Preview() {
    struct SBSWTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: SBSWTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return SBSWTheme_Preview()
}
