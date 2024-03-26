//
//  ThemeSettings.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 2/29/24.
//

import SwiftUI

struct ThemeSettings: View {
    @Binding var path: [Int]
    
    var body: some View {
        List {
            NavigationLink { ThemeList(themes: ColorThemes, path: $path) } label: {
                Text("Colors")
            }
            NavigationLink { BHSThemesList(path: $path) } label: {
                Text("Barbershop Harmony Society")
            }
            NavigationLink { ThemeList(themes: CauseThemes, path: $path) } label: {
                Text("Causes")
            }
        }
    }
}

#Preview {
    @State var path = [Int]()
    return ThemeSettings(path: $path)
}
