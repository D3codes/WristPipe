//
//  ThemeList.swift
//  WristPipe2 Watch App
//
//  Created by David Freeman on 3/25/24.
//

import SwiftUI

struct ThemeList: View {
    @AppStorage("theme") private var selectedTheme = 0
    @State var themes: [any Theme]
    
    var body: some View {
        List(themes.sorted(by: { $0.name < $1.name }), id:\.self.id) { theme in
            Button(action: { selectedTheme = theme.id }, label: {
                Text("\(theme.name)")
            })
        }
    }
}

#Preview {
    ThemeList(themes: Themes)
}
