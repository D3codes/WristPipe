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
            ZStack {
                Circle()
                    .opacity(0.15)
                Image("wpicon_sm_tint")
                    .resizable()
                    .scaledToFit()
            }
        }
    }
}

#Preview(as: .accessoryCircular) {
    LaunchWidget()
} timeline: {
    LaunchEntry(date: .now)
}
