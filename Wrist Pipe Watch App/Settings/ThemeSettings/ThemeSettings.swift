//
//  ThemeSettings.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 2/29/24.
//

import SwiftUI

struct ThemeSettings: View {
    @AppStorage(UserDefaultsKeys().theme) private var selectedTheme = 0
    @Binding var path: [Int]
    
    var body: some View {
        List {
            NavigationLink { ThemeList(themes: ColorThemes, path: $path) } label: {
                Text("Colors")
                    .frame(minWidth: 120, alignment: .leading)
                Spacer()
                Image(systemName: "chevron.right")
            }
            NavigationLink { BHSThemesList(path: $path) } label: {
                Text("Barbershop Harmony Society")
                    .frame(minWidth: 120, alignment: .leading)
                Spacer()
                Image(systemName: "chevron.right")
            }
            NavigationLink { ThemeList(themes: CauseThemes, path: $path) } label: {
                Text("Causes")
                    .frame(minWidth: 120, alignment: .leading)
                Spacer()
                Image(systemName: "chevron.right")
            }
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    selectedTheme = Themes[Int.random(in: 0..<Themes.count)].id
                    path.removeAll()
                } label: {
                    Image(systemName: "shuffle")
                        .foregroundStyle(Color.white)
                }
            }
        }
    }
}

#Preview {
    struct ThemeSettings_Preview: View {
        @State var path = [Int]()
        
        var body: some View {
            NavigationView {
                ThemeSettings(path: $path)
            }
        }
    }
    
    return ThemeSettings_Preview()
}
