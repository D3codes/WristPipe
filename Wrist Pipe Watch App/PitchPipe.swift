//
//  PitchPicker.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 12/22/19.
//  Copyright © 2019 David Freeman. All rights reserved.
//

import SwiftUI
import Foundation
import TipKit

struct PitchPipe: View {
    @AppStorage(UserDefaultsKeys().theme) private var selectedTheme = 0
    @AppStorage(UserDefaultsKeys().showImage) private var showImage = true
    @State var theme = Themes[0]
    @State private var path = [Int]()
    @State private var selectedPitch = 0.0
    
    private let pitchSelectTip = PitchSelectTip()
    private let playPitchTip = PlayPitchTip()
    
    var body: some View {
        NavigationStack(path: $path) {
            ZStack {
                PitchSelector(selectedPitch: $selectedPitch, theme: $theme, showImage: $showImage)
                PitchRing(selectedPitch: $selectedPitch, theme: $theme)
                TipView(pitchSelectTip)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                TipView(playPitchTip)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            }
            .focusable(true)
            .digitalCrownRotation($selectedPitch,
                from: 0, through: 12.001, by: 1,
                sensitivity: .low, isContinuous: true, isHapticFeedbackEnabled: true
            )
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(AnyView(theme.getBackground()))
            .onAppear(perform: {
                theme = Themes.first(where: { $0.id == selectedTheme }) ?? Themes[0]
            })
            .onChange(of: selectedTheme, { _,newTheme in
                theme = Themes.first(where: { $0.id == newTheme }) ?? Themes[0]
            })
            .onChange(of: selectedPitch, { _,newVal in
                PitchSelectTip.alreadyDiscovered = true
                PlayPitchTip.pitchSelected.sendDonation()
            })
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    NavigationLink(value: 1, label: {
                        Image(systemName: "gear")
                            .foregroundStyle(Color.white)
                    })
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink { SetListList() } label: {
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
    PitchPipe(theme: BlackTheme())
}
