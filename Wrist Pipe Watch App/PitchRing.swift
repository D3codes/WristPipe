//
//  PitchRing.swift
//  Wrist Pipe
//
//  Created by David Freeman on 7/6/24.
//

import SwiftUI

struct PitchRing: View {
    @Binding var selectedPitch: Double
    @Binding var theme: any Theme
    
    let pitchSize: Double = Screen().getPitchSize()
    
    func getSelectedPitchIndex() -> Int {
        return round(selectedPitch) == 12 ? 0 : Int(round(selectedPitch))
    }
    
    var body: some View {
        ForEach(PitchPlayer().pitches) { pitch in
            Button {
                selectedPitch = Double(pitch.id)
            } label: {
                Text(pitch.note)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                    .font(.title3)
            }
            .background(
                getSelectedPitchIndex() == pitch.id
                ? theme.pitchBackgroundSelectedColor[pitch.id]
                : theme.pitchBackgroundUnselectedColor[pitch.id]
            )
            .opacity(
                getSelectedPitchIndex() == pitch.id
                ? theme.pitchSelectedOpacity
                : theme.pitchUnselectedOpacity
            )
            .foregroundStyle(
                getSelectedPitchIndex() == pitch.id
                ? theme.pitchTextSelectedColor
                : theme.pitchTextUnselectedColor
            )
            .frame(width: pitchSize, height: pitchSize)
            .clipShape(Circle())
            .offset(x: pitch.xOff * (pitchSize * 2), y: pitch.yOff * (pitchSize * 2))
        }
    }
}

#Preview() {
    struct PitchRing_Preview: View {
        @State var selectedPitch: Double = 0.0
        @State var theme: any Theme = SPEBSQSATheme()
        
        var body: some View {
            ZStack {
                PitchRing(selectedPitch: $selectedPitch, theme: $theme)
            }
        }
    }
    
    return PitchRing_Preview()
}
