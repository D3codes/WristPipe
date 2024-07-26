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
    @Environment(\.scenePhase) var scenePhase
    @AppStorage(UserDefaultsKeys().openStreak) private var openStreak = 1
    @State var lastOpenedDate: Date = Date.now
    let defaults = UserDefaults.standard
    
    
    init() {
        //Waiting on resolution from Apple (FB14303206)
        //AppShortcuts.updateAppShortcutParameters()
        
        //For testing
        //try? Tips.resetDatastore()
        
        try? Tips.configure([
            .displayFrequency(.immediate),
            .datastoreLocation(.applicationDefault)
        ])
    }
    
    func updateStreak() {
        if let data = defaults.object(forKey: UserDefaultsKeys().lastOpenedDate) as? Data,
           let item = try? JSONDecoder().decode(Date.self, from: data) {
            self.lastOpenedDate = item
        }
        
        let calendar = Calendar.current
        if calendar.isDateInYesterday(lastOpenedDate) {
            openStreak += 1
        } else if calendar.isDateInToday(lastOpenedDate) {
            // do nothing
        } else {
            openStreak = 1
        }
        
        lastOpenedDate = Date.now
        if let encoded = try? JSONEncoder().encode(lastOpenedDate) {
            self.defaults.set(encoded, forKey: UserDefaultsKeys().lastOpenedDate)
            self.defaults.synchronize()
        }
    }
    
    var body: some Scene {
        WindowGroup {
            PitchPipe()
                .onChange(of: scenePhase) { oldPhase, newPhase in
                    if newPhase == .active {
                        updateStreak()
                    }
                }
        }
    }
}
