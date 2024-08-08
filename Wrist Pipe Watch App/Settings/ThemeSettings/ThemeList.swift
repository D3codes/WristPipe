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
            NavigationLink { ThemePreview(theme: theme, path: $path) } label: {
                HStack {
                    Text("\(theme.name)")
                    Spacer()
                    if selectedTheme == theme.id {
                        Image(systemName: "checkmark")
                            .foregroundStyle(.green)
                    }
                }
            }
        }
    }
}

#Preview {
    struct ThemeList_Preview: View {
        @State var path = [Int]()
        
        var body: some View {
            ThemeList(themes: Themes, path: $path)
        }
    }
    
    return ThemeList_Preview()
}
