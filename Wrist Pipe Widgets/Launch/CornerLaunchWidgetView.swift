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
        Image("wpicon_xs\(renderingMode == .fullColor ? "" : "_tint")")
            .resizable()
            .scaledToFit()
    }
}

#Preview(as: .accessoryCorner) {
    LaunchWidget()
} timeline: {
    LaunchEntry(date: .now)
}
