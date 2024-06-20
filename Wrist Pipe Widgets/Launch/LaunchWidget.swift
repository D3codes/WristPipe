//
//  LaunchWidget.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/19/24.
//

import WidgetKit
import SwiftUI

struct LaunchEntry: TimelineEntry {
    let date: Date
}

struct LaunchProvider: TimelineProvider {
    func placeholder(in context: Context) -> LaunchEntry {
        LaunchEntry(date: Date())
    }
    
    func getSnapshot(in context: Context, completion: @escaping @Sendable (LaunchEntry) -> Void) {
        let date = Date()
        let entry = LaunchEntry(date: date)
        
        completion(entry)
    }
    
    func getTimeline(in context: Context, completion: @escaping (Timeline<LaunchEntry>) -> Void) {
        let date = Date()
        let entry = LaunchEntry(date: date)
        
        let timeline = Timeline(entries: [entry], policy: .never)
        
        completion(timeline)
    }
}

struct LaunchWidget: Widget {
    var body: some WidgetConfiguration {
        StaticConfiguration(kind: "Wrist_Pipe_Launch", provider: LaunchProvider()) { entry in
            LaunchEntryView(entry: entry)
                .containerBackground(.fill.tertiary, for: .widget)
        }
        .configurationDisplayName("Launch Wrist Pipe")
        .description("Launches Wrist Pipe")
        .supportedFamilies([.accessoryCircular, .accessoryRectangular, .accessoryCorner])
    }
}

struct LaunchEntryView : View {
    var entry: LaunchProvider.Entry
    @Environment(\.widgetFamily) var family: WidgetFamily
    
    var body: some View {
        switch family {
        case .accessoryCorner: CornerLaunchWidgetView()
        case .accessoryRectangular: RectangularLaunchWidgetView()
        case .accessoryCircular: CircularLaunchWidgetView()
        default: CircularLaunchWidgetView()
        }
    }
}

#Preview(as: .accessoryRectangular) {
    LaunchWidget()
} timeline: {
    LaunchEntry(date: .now)
}
