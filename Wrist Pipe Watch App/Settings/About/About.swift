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
            NavigationLink { Acknowledgments() } label: {
                Text("Acknowledgments")
            }
        }
    }
}

#Preview {
    About()
}
