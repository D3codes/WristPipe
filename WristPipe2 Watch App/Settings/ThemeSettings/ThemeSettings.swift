//
//  ThemeSettings.swift
//  WristPipe2 Watch App
//
//  Created by David Freeman on 2/29/24.
//

import SwiftUI

struct ThemeSettings: View {
    var body: some View {
        List {
            NavigationLink { ThemeList(themes: ColorThemes) } label: {
                Text("Colors")
            }
            NavigationLink { BHSThemesList() } label: {
                Text("Barbershop Harmony Society")
            }
            NavigationLink { ThemeList(themes: CauseThemes) } label: {
                Text("Causes")
            }
        }
    }
}

#Preview {
    ThemeSettings()
}
