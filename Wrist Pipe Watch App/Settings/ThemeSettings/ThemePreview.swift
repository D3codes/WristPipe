//
//  ThemePreview.swift
//  Wrist Pipe
//
//  Created by David Freeman on 7/6/24.
//

import SwiftUI

struct ThemePreview: View {
    @AppStorage(UserDefaultsKeys().theme) private var selectedTheme = 0
    @State var theme: any Theme
    @Binding var path: [Int]
    @State var selectedPitch: Double = 0.0
    
    let saveButtonOffset: Double = Screen().getSaveButtonOffset()
    
    var body: some View {
        ZStack {
            PitchRing(selectedPitch: $selectedPitch, theme: $theme)
            PitchSelector(selectedPitch: $selectedPitch, theme: $theme)
            ZStack() {
                RoundedRectangle(cornerRadius: 20)
                    .fill(.ultraThinMaterial)
                VStack {
                    Button("Save") {
                        selectedTheme = theme.id
                        path.removeAll()
                    }
                    .padding()
                    Spacer()
                }
            }
            .offset(y: saveButtonOffset)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(theme.getBackground()))
    }
}

#Preview {
    struct ThemePreview_Preview: View {
        @State var theme = SPEBSQSATheme()
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: theme, path: $path)
            }
        }
    }
    
    return ThemePreview_Preview()
}
