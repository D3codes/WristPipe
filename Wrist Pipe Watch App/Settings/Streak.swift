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
    
    let phrases: [String] = [
        "Opened Wrist Pipe",
        "Kept in Tune",
        "In Key for",
        "On Pitch",
        "Harmonious for",
        "Pitch-perfect for",
        "Properly tuned",
        "Tonally accurate",
        "Musically precise",
        "Perfectly tuned",
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
    
    func getContrastText() -> Color {
        var r, g, b, a: CGFloat
        (r, g, b, a) = (0, 0, 0, 0)
        UIColor(backgroundColor).getRed(&r, green: &g, blue: &b, alpha: &a)
        let luminance = 0.2126 * r + 0.7152 * g + 0.0722 * b
        return  luminance < 0.6 ? Color.white : Color.black
    }
    
    var body: some View {
        ZStack {
            VStack {
                Text(phrases.randomElement()!)
                ZStack {
                    Capsule()
                        .frame(width: (openStreak < 1000 ? 100 : 150), height: 100)
                        .foregroundStyle(backgroundColor.gradient)
                    Text("\(openStreak)")
                        .font(.system(size: 50, weight: .semibold))
                        .foregroundStyle(getContrastText())
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
            backgroundColor = Color(
                red: .random(in: 0...1),
                green: .random(in: 0...1),
                blue: .random(in: 0...1),
                opacity: 1
            )
        }
    }
}

#Preview {
    return Streak()
}
