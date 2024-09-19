//
//  NSCTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 9/18/24.
//

import SwiftUI

struct NSCTheme: Theme {
    var id: Int = 1003
    var name: String = "Carolinas District"
    
    private let NSCLightBlue: Color = Color(red: 0.600, green: 0.859, blue: 0.961)
    private let NSCDarkBlue: Color = Color(red: 0.141, green: 0.318, blue: 0.635)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.white)
    }
    
    var selectorColor: Color = Color(red: 0.141, green: 0.318, blue: 0.635)
    var selectorTextColor: Color = Color(red: 0.141, green: 0.318, blue: 0.635)
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
        Color(red: 0.600, green: 0.859, blue: 0.961),
        Color(red: 0.600, green: 0.859, blue: 0.961),
        Color(red: 0.600, green: 0.859, blue: 0.961),
        Color(red: 0.600, green: 0.859, blue: 0.961),
        Color(red: 0.600, green: 0.859, blue: 0.961),
        Color(red: 0.600, green: 0.859, blue: 0.961),
        Color(red: 0.600, green: 0.859, blue: 0.961),
        Color(red: 0.600, green: 0.859, blue: 0.961),
        Color(red: 0.600, green: 0.859, blue: 0.961),
        Color(red: 0.600, green: 0.859, blue: 0.961),
        Color(red: 0.600, green: 0.859, blue: 0.961),
        Color(red: 0.600, green: 0.859, blue: 0.961)
    ]
    var pitchTextSelectedColor: Color = .white
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("logo_district_NSC")
    var logoXScale: Double = 2.0
    var logoYScale: Double = 2.0
}

#Preview() {
    struct NSCTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: NSCTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return NSCTheme_Preview()
}
