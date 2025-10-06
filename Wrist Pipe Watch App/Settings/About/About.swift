//
//  About.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 11/13/21.
//  Copyright © 2021 David Freeman. All rights reserved.
//

import Foundation
import SwiftUI

struct About: View {
    let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
    
    var body: some View {
        VStack {
            Text("Wrist Pipe\(appVersion != nil ? " \(appVersion!)" : "")")
            Spacer()
            Group {
                Text("Made by")
                Text("David Freeman")
            }
            Spacer()
            if #available(watchOS 26.0, *) {
                NavigationLink { Acknowledgments() } label: {
                    Text("Acknowledgments")
                }
                .buttonStyle(.glass)
            } else {
                NavigationLink { Acknowledgments() } label: {
                    Text("Acknowledgments")
                }
            }
        }
    }
}

#Preview {
    About()
}
