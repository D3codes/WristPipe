//
//  PitchSelector.swift
//  Wrist Pipe
//
//  Created by David Freeman on 7/6/24.
//

import SwiftUI
import Vortex

struct PitchSelector: View {
    @AppStorage(UserDefaultsKeys().holdToPlay) private var holdToPlay = true
    @State var selectedInstrument: Instrument = pitchPipe
    let defaults = UserDefaults.standard
    @Binding var selectedPitch: Double
    @Binding var theme: any Theme
    @Binding var showImage: Bool
    
    let selectorSize: Double = Screen().getPitchSelectorSize()
    let pointerSize: Double = Screen().getPitchPointerSize()
    var pitchPlayer = PitchPlayer()
    
    @State var pitchOrder: [Double] = []
    private let easterEgg: [Double] = [
        5.0, 5.0, 5.0, 5.0, 5.0, 0.0,       //Keep the whole world singing
        5.0, 5.0, 5.0,                      //all day long
        5.0, 7.0, 8.0, 8.0, 8.0, 9.0, 0.0,  //Watch goodwill come a-winging
        9.0, 7.0, 5.0                       //on a song
    ]
    
    func getSelectedPitchIndex() -> Int {
        return round(selectedPitch) == 12 ? 0 : Int(round(selectedPitch))
    }
    
    func getSelectedPitch() -> Pitch {
        return pitchPlayer.pitches[getSelectedPitchIndex()]
    }
    
    func getSelectedInstrument() {
        if let data = defaults.object(forKey: UserDefaultsKeys().instrument) as? Data,
        let item = try? JSONDecoder().decode(Instrument.self, from: data) {
            self.selectedInstrument = item
        }
    }
    
    var body: some View {
        VortexViewReader { proxy in
            VortexView(.confetti) {
                Rectangle()
                    .fill(.white)
                    .frame(width: 16, height: 16)
                    .tag("square")
                
                Circle()
                    .fill(.white)
                    .frame(width: 16)
                    .tag("circle")
            }
            .frame(maxWidth: .infinity, minHeight: 500, maxHeight: .infinity)
            .offset(y: -100)
            
            ZStack {
                if #available(watchOS 11.0, *) {
                    Button ("") {
                        pitchPlayer.playPitch(selectedPitch: getSelectedPitch().fileName, instrument: selectedInstrument.name)
                    }
                    .frame(width: selectorSize, height: selectorSize)
                    .clipShape(.circle)
                    .handGestureShortcut(.primaryAction)
                }
                Circle()
                    .fill(theme.selectorColor)
                    .frame(width: selectorSize, height: selectorSize)
                Rectangle()
                    .fill(theme.selectorColor)
                    .frame(width: pointerSize, height: pointerSize)
                    .rotationEffect(Angle(degrees: 45))
                    .offset(x: 0, y: -15)
                    .rotationEffect(Angle(degrees: selectedPitch * 30))
                Circle()
                    .fill(theme.selectorBackgroundColor[getSelectedPitchIndex()])
                    .frame(width: selectorSize - 5, height: selectorSize - 5)
                
                if (theme.logo != nil && showImage) {
                    theme.logo!
                        .resizable()
                        .frame(width: selectorSize - theme.logoXScale, height: selectorSize - theme.logoYScale)
                        .clipShape(.circle)
                } else {
                    Text("\(getSelectedPitch().note)")
                        .font(.largeTitle)
                        .foregroundColor(theme.selectorTextColor)
                }
            }
            .onLongPressGesture(minimumDuration: 15) {
            } onPressingChanged: { inProgress in
                PlayPitchTip.alreadyDiscovered = true
                if inProgress {
                    pitchPlayer.playPitch(selectedPitch: getSelectedPitch().fileName, instrument: selectedInstrument.name)
                    
                    pitchOrder.append(selectedPitch)
                    if pitchOrder.count > easterEgg.count {
                        pitchOrder = Array(pitchOrder[1...])
                    }
                    if pitchOrder == easterEgg {
                        proxy.burst()
                    }
                } else if holdToPlay {
                    pitchPlayer.stopPlaying()
                }
            }
        }
        .onAppear(perform: getSelectedInstrument)
    }
}

#Preview() {
    struct PitchSelector_Preview: View {
        @State var selectedPitch: Double = 0.0
        @State var theme: any Theme = SPEBSQSATheme()
        @State var showImage: Bool = true
        
        var body: some View {
            ZStack {
                PitchSelector(selectedPitch: $selectedPitch, theme: $theme, showImage: $showImage)
            }
        }
    }
    
    return PitchSelector_Preview()
}
