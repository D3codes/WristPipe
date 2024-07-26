//
//  Streak.swift
//  Wrist Pipe
//
//  Created by David Freeman on 7/25/24.
//

import SwiftUI
import Vortex

struct Streak: View {
    @AppStorage(UserDefaultsKeys().openStreak) private var openStreak = 1
    @State var backgroundColor: Color = .blue
    private let colorHelper = ColorHelper()
    
    let phrases: [String] = [
        "Opened Wrist Pipe",
        "Stayed in Tune",
        "In Key for",
        "On Pitch",
        "Harmonious for",
        "Pitch-Perfect for",
        "Properly Tuned",
        "Tonally Accurate",
        "Musically precise",
        "Perfectly Tuned",
        "Blew a Pitch",
        "Harmonized",
        "Rang a Chord"
    ]
    
    func isAnniverary() -> Bool {
        if openStreak == 30 || openStreak == 100 {
            return true
        }
        
        return openStreak % 365 == 0
    }
    
    @State private var noteOffsets = [
        Double.random(in: 100...200),
        Double.random(in: 100...200),
        Double.random(in: 100...200),
        Double.random(in: 100...200),
        Double.random(in: 100...200),
        Double.random(in: 100...200),
        Double.random(in: 100...200),
        Double.random(in: 100...200),
        Double.random(in: 100...200),
        Double.random(in: 100...200)
    ]
    
    //used to start floating notes animation
    @State private var appeared = false
    func flipOffsets() {
        if appeared {
            return
        }
        
        for i in 0...9 {
            noteOffsets[i] = -noteOffsets[i]
        }
        
        appeared = true
    }
    
    var body: some View {
        ZStack {
            VStack {
                ForEach(0..<10) { i in
                    Image(systemName: "music.note")
                        .foregroundStyle(colorHelper.getRandomColor())
                        .scaleEffect(Double.random(in: 0.3...1.3))
                        .offset(x: noteOffsets[i])
                        .animation(
                            .linear(duration: Double.random(in: 5...10))
                            .repeatForever(autoreverses: false),
                            value: noteOffsets[i]
                        )
                }
            }
            
            VStack {
                Text(phrases.randomElement()!)
                ZStack {
                    Capsule()
                        .frame(width: (openStreak < 1000 ? 100 : 150), height: 100)
                        .foregroundStyle(backgroundColor.gradient)
                    Text("\(openStreak)")
                        .font(.system(size: 50, weight: .semibold))
                        .foregroundStyle(colorHelper.getContrastText(for: backgroundColor))
                }
                Text("Day\(openStreak > 1 ? "s" : "") in a Row")
            }
            
            if isAnniverary() {
                VortexView(.fireworks) {
                    Circle()
                        .fill(.white)
                        .frame(width: 32)
                        .blur(radius: 5)
                        .blendMode(.plusLighter)
                        .tag("circle")
                }
            }
        }
        .onAppear() {
            backgroundColor = colorHelper.getRandomColor()
            flipOffsets()
        }
    }
}

#Preview {
    return Streak()
}
