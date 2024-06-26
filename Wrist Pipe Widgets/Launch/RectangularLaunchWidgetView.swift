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
                    .frame(maxWidth: 30, maxHeight: 30)
                Spacer()
                VStack {
                    Text("Keep the Whole")
                    Text("World Singing!")
                }
                Spacer()
            }
        } else {
            HStack {
                ZStack {
                    Circle()
                        .opacity(0.15)
                        .frame(maxWidth: 30, maxHeight: 30)
                    Image("wpicon_tint")
                        .resizable()
                        .frame(maxWidth: 30, maxHeight: 30)
                }
                Spacer()
                VStack {
                    Text("Keep the Whole")
                    Text("World Singing!")
                }
                Spacer()
            }
        }
    }
}

#Preview(as: .accessoryRectangular) {
    LaunchWidget()
} timeline: {
    LaunchEntry(date: .now)
}
