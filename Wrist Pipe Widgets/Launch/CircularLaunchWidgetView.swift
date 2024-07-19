//
//  CircularLaunchWidget.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/20/24.
//

import SwiftUI
import WidgetKit

struct CircularLaunchWidgetView: View {
    @Environment(\.widgetRenderingMode) var renderingMode
    
    var body: some View {
        Image("wpicon_sm\(renderingMode == .fullColor ? "" : "_tint")")
            .resizable()
            .scaledToFit()
            .widgetAccentable()
    }
}

#Preview(as: .accessoryCircular) {
    LaunchWidget()
} timeline: {
    LaunchEntry(date: .now)
}
