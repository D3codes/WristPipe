//
//  WristPipeApp.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 2/25/24.
//

import SwiftUI
import TipKit

@main
struct Wrist_Pipe_Watch_AppApp: App {
    
    init() {
        AppShortcuts.updateAppShortcutParameters()
        
        try? Tips.resetDatastore()
        
        try? Tips.configure([
            .displayFrequency(.immediate),
            .datastoreLocation(.applicationDefault)
        ])
    }
    
    var body: some Scene {
        WindowGroup {
            PitchPipe()
        }
    }
}
