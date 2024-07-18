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
                .frame(maxWidth: 30, maxHeight: 30)
                .clipShape(.circle)
            Spacer()
            VStack {
                Text("Keep the Whole")
                Text("World Singing!")
            }
            Spacer()
        }
    }
}

#Preview(as: .accessoryRectangular) {
    LaunchWidget()
} timeline: {
    LaunchEntry(date: .now)
}
