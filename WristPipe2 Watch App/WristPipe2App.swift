//
//  WristPipe2App.swift
//  WristPipe2 Watch App
//
//  Created by David Freeman on 2/25/24.
//

import SwiftUI

@main
struct WristPipe2_Watch_AppApp: App {
    var body: some Scene {
        @State var path = NavigationPath()
        
        WindowGroup {
            NavigationStack(path: $path) {
                PitchPipe()
                    .toolbar {
                        ToolbarItem(placement: .topBarLeading) {
                            NavigationLink { Settings() } label: {
                                Image(systemName: "gear")
                            }
                        }
                        
                        ToolbarItem(placement: .topBarTrailing) {
                            NavigationLink { SetList() } label: {
                                Image(systemName: "music.note.list")
                            }
                        }
                    }
            }
        }
    }
}
