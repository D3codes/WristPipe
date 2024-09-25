//
//  ILLTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 9/18/24.
//

import SwiftUI

struct ILLTheme: Theme {
    var id: Int = 1007
    var name: String = "Illinois District"
    
    private let ILLBlue: Color = Color(red: 0.004, green: 0.475, blue: 0.761)
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.white)
    }
    
    var selectorColor: Color = Color(red: 0.004, green: 0.475, blue: 0.761)
    var selectorTextColor: Color = Color(red: 0.004, green: 0.475, blue: 0.761)
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
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 0.75
    
    var pitchBackgroundSelectedColor: [Color] = [
        Color(red: 0.004, green: 0.475, blue: 0.761),
        Color(red: 0.004, green: 0.475, blue: 0.761),
        Color(red: 0.004, green: 0.475, blue: 0.761),
        Color(red: 0.004, green: 0.475, blue: 0.761),
        Color(red: 0.004, green: 0.475, blue: 0.761),
        Color(red: 0.004, green: 0.475, blue: 0.761),
        Color(red: 0.004, green: 0.475, blue: 0.761),
        Color(red: 0.004, green: 0.475, blue: 0.761),
        Color(red: 0.004, green: 0.475, blue: 0.761),
        Color(red: 0.004, green: 0.475, blue: 0.761),
        Color(red: 0.004, green: 0.475, blue: 0.761),
        Color(red: 0.004, green: 0.475, blue: 0.761)
    ]
    var pitchTextSelectedColor: Color = .white
    var pitchSelectedOpacity: Double = 1
    
    var logo: Image? = Image("logo_district_ILL")
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview() {
    struct ILLTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: ILLTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return ILLTheme_Preview()
}
