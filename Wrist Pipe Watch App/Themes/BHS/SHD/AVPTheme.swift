//
//  AVPTheme.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/23/24.
//

import SwiftUI

struct AVPTheme: Theme {
    var id: Int = 2506
    var name: String = "Atlanta Vocal Project"
    
    private let smcBlue: Color = Color(red: 0.196, green: 0.243, blue: 0.529)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.white)
    }
    
    var selectorColor: Color = Color(red: 0.196, green: 0.243, blue: 0.529)
    var selectorTextColor: Color = Color(red: 0.196, green: 0.243, blue: 0.529)
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
        Color(red: 0.196, green: 0.243, blue: 0.529),
        Color(red: 0.196, green: 0.243, blue: 0.529),
        Color(red: 0.196, green: 0.243, blue: 0.529),
        Color(red: 0.196, green: 0.243, blue: 0.529),
        Color(red: 0.196, green: 0.243, blue: 0.529),
        Color(red: 0.196, green: 0.243, blue: 0.529),
        Color(red: 0.196, green: 0.243, blue: 0.529),
        Color(red: 0.196, green: 0.243, blue: 0.529),
        Color(red: 0.196, green: 0.243, blue: 0.529),
        Color(red: 0.196, green: 0.243, blue: 0.529),
        Color(red: 0.196, green: 0.243, blue: 0.529),
        Color(red: 0.196, green: 0.243, blue: 0.529)
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
    
    var logo: Image? = Image("avp_logo")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview() {
    struct AVPTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: AVPTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return AVPTheme_Preview()
}
