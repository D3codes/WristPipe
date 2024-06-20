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
        if renderingMode == .fullColor {
            Image("wpicon_sm")
                .resizable()
                .scaledToFit()
        } else {
            SFIcon(scale: 0)
        }
    }
}

#Preview(as: .accessoryCircular) {
    LaunchWidget()
} timeline: {
    LaunchEntry(date: .now)
}
