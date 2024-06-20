//
//  CornerLaunchWidgetView.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/20/24.
//

import SwiftUI
import WidgetKit

struct CornerLaunchWidgetView: View {
    @Environment(\.widgetRenderingMode) var renderingMode
    
    var body: some View {
        if renderingMode == .fullColor {
            Image("wpicon_xs")
                .resizable()
                .scaledToFit()
        } else {
            SFIcon(scale: 5.0)
        }
    }
}

#Preview(as: .accessoryCorner) {
    LaunchWidget()
} timeline: {
    LaunchEntry(date: .now)
}
