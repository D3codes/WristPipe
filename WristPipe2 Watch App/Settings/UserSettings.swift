//
//  UserSettings.swift
//  WristPipe2 Watch App
//
//  Created by David Freeman on 2/26/24.
//

import Foundation
import SwiftUI

class UserSettings: ObservableObject {
    @Published var ignoreSilentMode: Bool {
        didSet {
            UserDefaults.standard.set(ignoreSilentMode, forKey: "ignoreSilentMode")
        }
    }
    
    @Published var selectedTheme: Int {
        didSet {
            UserDefaults.standard.set(selectedTheme, forKey: "theme")
        }
    }
    
    @Published var holdToPlay: Bool {
        didSet {
            UserDefaults.standard.set(holdToPlay, forKey: "holdToPlay")
        }
    }

    init() {
        self.ignoreSilentMode = UserDefaults.standard.object(forKey: "ignoreSilentMode") as? Bool ?? true
        self.selectedTheme = UserDefaults.standard.object(forKey: "theme") as? Int ?? 0
        self.holdToPlay = UserDefaults.standard.object(forKey: "holdToPlay") as? Bool ?? false
    }

}
