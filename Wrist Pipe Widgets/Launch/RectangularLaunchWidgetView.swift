//
//  RectangularLaunchWidgetView.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/20/24.
//

import SwiftUI
import WidgetKit

struct RectangularLaunchWidgetView: View {
    @Environment(\.widgetRenderingMode) var renderingMode
    
    var body: some View {
        HStack {
            Image("wpicon\(renderingMode == .fullColor ? "" : "_tint")")
                .resizable()
                .frame(maxWidth: 50, maxHeight: 50)
                .clipShape(.circle)
                .widgetAccentable()
            Spacer()
            VStack {
                Text("Keep the")
                Text("Whole World")
                Text("Singing!")
            }
        }
    }
}

#Preview(as: .accessoryRectangular) {
    LaunchWidget()
} timeline: {
    LaunchEntry(date: .now)
}
