//
//  PathfinderTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/26/24.
//

import SwiftUI

struct PathfinderTheme: Theme {
    var id: Int = 1307
    var name: String = "Pathfinder Chorus"
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.white)
    }

    var selectorColor: Color = .black
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [.white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white]

    var pitchBackgroundUnselectedColor: [Color] = [
        Color(red: 0.3, green: 0.68, blue: 0.78),
        Color(red: 0.3, green: 0.68, blue: 0.78),
        Color(red: 0.3, green: 0.68, blue: 0.78),
        Color(red: 0.3, green: 0.68, blue: 0.78),
        Color(red: 0.3, green: 0.68, blue: 0.78),
        Color(red: 0.3, green: 0.68, blue: 0.78),
        Color(red: 0.3, green: 0.68, blue: 0.78),
        Color(red: 0.3, green: 0.68, blue: 0.78),
        Color(red: 0.3, green: 0.68, blue: 0.78),
        Color(red: 0.3, green: 0.68, blue: 0.78),
        Color(red: 0.3, green: 0.68, blue: 0.78),
        Color(red: 0.3, green: 0.68, blue: 0.78)
    ]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 1.0

    var pitchBackgroundSelectedColor: [Color] = [.gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray]
    var pitchTextSelectedColor: Color = .black
    var pitchSelectedOpacity: Double = 0.8
    
    var logo: Image? = Image("pathfinder_logo")
    var logoXScale: Double = 5
    var logoYScale: Double = 5
}

#Preview() {
    PitchPipe(theme: PathfinderTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(PathfinderTheme().getBackground()))
}
