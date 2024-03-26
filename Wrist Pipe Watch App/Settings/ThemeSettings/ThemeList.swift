//
//  ThemeList.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/25/24.
//

import SwiftUI

struct ThemeList: View {
    @AppStorage(UserDefaultsKeys().theme) private var selectedTheme = 0
    @State var themes: [any Theme]
    @Binding var path: [Int]
    
    var body: some View {
        List(themes.sorted(by: { $0.name < $1.name }), id:\.self.id) { theme in
            Button(action: {
                selectedTheme = theme.id
                path.removeAll()
            }, label: {
                Text("\(theme.name)")
            })
        }
    }
}

#Preview {
    @State var path = [Int]()
    return ThemeList(themes: Themes, path: $path)
}
