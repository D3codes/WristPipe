//
//  PCHTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/27/24.
//

import SwiftUI

struct PCHTheme: Theme {
    var id: Int = 1503
    var name: String = "Pacific Coast Harmony"
    
    private let PCHBlue: Color = Color(red: 0, green: 0.1, blue: 0.65)
    private let PCHGold: Color = Color(red: 0.92, green: 0.71, blue: 0.27)
    
    func getBackground() -> any View {
        return AnyView(
            VStack {
                Text("California")
                    .offset(y: -25)
                    .font(.title2)
                    .frame(maxWidth: .infinity, maxHeight: 15)
                    .foregroundStyle(.white)
                    .background(.red)

                Text("")
                    .font(.title2)
                    .frame(maxWidth: .infinity, maxHeight: 5)
                    .foregroundStyle(.white)
                    .background(.white)

                Text("La Jolla")
                    .offset(y: 35)
                    .font(.callout)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .foregroundStyle(.white)
                    .background(PCHBlue)
            }
        )
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.white)
    }
    
    var selectorColor: Color = Color(red: 0.92, green: 0.71, blue: 0.27)
    var selectorTextColor: Color = Color(red: 0, green: 0.1, blue: 0.65)
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
    
    var logo: Image? = Image("PCH_logo")
    var logoXScale: Double = 5
    var logoYScale: Double = 5
}

#Preview() {
    struct PCHTheme_Preview: View {
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: PCHTheme(), path: $path, showSaveButton: false)
            }
        }
    }
    
    return PCHTheme_Preview()
}
