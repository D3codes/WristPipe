//
//  ThemeSettings.swift
//  WristPipe2 Watch App
//
//  Created by David Freeman on 2/29/24.
//

import SwiftUI

struct ThemeSettings: View {
    @AppStorage("theme") private var selectedTheme = 3
    
    var body: some View {
        VStack {
            Text("Selected Theme: \(selectedTheme)")
            Button("BHS") {
                selectedTheme = 2
            }
            Button("SPEBSQSA") {
                selectedTheme = 3
            }
            Button("Black") {
                selectedTheme = 0
            }
        }
    }
}

#Preview {
    ThemeSettings()
}
