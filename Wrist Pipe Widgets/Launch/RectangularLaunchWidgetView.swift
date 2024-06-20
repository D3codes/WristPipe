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
        if renderingMode == .fullColor {
            HStack {
                Image("wpicon")
                    .resizable()
                    .frame(maxWidth: 25, maxHeight: 25)
                Spacer()
                VStack {
                    Text("Keep the Whole")
                    Text("World Singing!")
                }
                Spacer()
            }
        } else {
            VStack {
                Text("Keep the Whole")
                Text("World Singing!")
            }
        }
    }
}

#Preview(as: .accessoryRectangular) {
    LaunchWidget()
} timeline: {
    LaunchEntry(date: .now)
}
