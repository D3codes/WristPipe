//
//  Shortcuts.swift
//  Wrist Pipe
//
//  Created by David Freeman on 7/11/24.
//

import AppIntents

struct AppShortcuts: AppShortcutsProvider {
    @AppShortcutsBuilder
    static var appShortcuts: [AppShortcut] {
        AppShortcut(
            intent: PlayFNaturalIntent(),
            phrases: [
                "\(.applicationName) F Natural",
                "F Natural \(.applicationName)",
                "Blow F Natural in \(.applicationName)",
                "\(.applicationName) blow F Natural"
            ],
            shortTitle: "Play F Natural",
            systemImageName: "music.note"
        )
        AppShortcut(
            intent: PlayFSharpIntent(),
            phrases: [
                "\(.applicationName) F Sharp",
                "F Sharp \(.applicationName)",
                "Blow F Sharp in \(.applicationName)",
                "\(.applicationName) blow F Sharp"
            ],
            shortTitle: "Play F Sharp",
            systemImageName: "music.note"
        )
  }
}
