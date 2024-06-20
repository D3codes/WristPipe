//
//  SFIcon.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/20/24.
//

import SwiftUI

struct SFIcon: View {
    var scale: CGFloat
    
    var body: some View {
        ZStack {
            Image(systemName: "circle.dotted")
                .resizable()
                .scaledToFit()
            Image(systemName: "circle.fill")
                .font(.system(size: 20-scale))
            Image(systemName: "triangle.fill")
                .font(.system(size: 15-scale))
                .offset(x: 4, y: 1)
        }
    }
}
