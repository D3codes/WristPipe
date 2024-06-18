//
//  PitchPicker.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 12/22/19.
//  Copyright © 2019 David Freeman. All rights reserved.
//

import SwiftUI
import Foundation

struct PitchPipe: View {
    @AppStorage(UserDefaultsKeys().theme) private var selectedTheme = 0
    @AppStorage(UserDefaultsKeys().holdToPlay) private var holdToPlay = true
    @State var theme = Themes[0]
    @State var preview = false
    @State private var path = [Int]()
    
    let pitchSize: Double = Screen().getPitchSize()
    let selectorSize: Double = Screen().getPitchSelectorSize()
    let pointerSize: Double = Screen().getPitchPointerSize()
    var pitchPlayer = PitchPlayer()
    
    @State private var selectedPitch = 0.0
    
    func getSelectedPitchIndex() -> Int {
        return round(selectedPitch) == 12 ? 0 : Int(round(selectedPitch))
    }
    
    func getSelectedPitch() -> Pitch {
        return pitchPlayer.pitches[getSelectedPitchIndex()]
    }
    
    var body: some View {
        NavigationStack(path: $path) {
            ZStack {
                ForEach(pitchPlayer.pitches) { pitch in
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
                
                ZStack {
                    if #available(watchOS 11.0, *) {
                        Button ("") {
                            pitchPlayer.playPitch(selectedPitch: getSelectedPitch().fileName)
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
                    
                    if (theme.logo != nil) {
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
                    if inProgress {
                        pitchPlayer.playPitch(selectedPitch: getSelectedPitch().fileName)
                    } else if holdToPlay {
                        pitchPlayer.stopPlaying()
                    }
                }
            }
            .focusable(true)
            .digitalCrownRotation($selectedPitch, from: 0, through: 12.001, by: 1, sensitivity: .low, isContinuous: true, isHapticFeedbackEnabled: true)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(AnyView(theme.getBackground()))
            .onAppear(perform: {
                if !preview {
                    theme = Themes.first(where: { $0.id == selectedTheme }) ?? Themes[0]
                }
            })
            .onChange(of: selectedTheme, { _,newTheme in
                theme = Themes.first(where: { $0.id == newTheme }) ?? Themes[0]
            })
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    NavigationLink(value: 1, label: {
                        Image(systemName: "gear")
                            .foregroundStyle(Color.white)
                    })
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink { SetList() } label: {
                        Image(systemName: "music.note.list")
                            .foregroundStyle(Color.white)
                    }
                }
            }
            .navigationDestination(for: Int.self) { _ in
                Settings(path: $path)
            }
        }
    }
}

#Preview() {
    PitchPipe(theme: SPEBSQSATheme(), preview: true)
}
