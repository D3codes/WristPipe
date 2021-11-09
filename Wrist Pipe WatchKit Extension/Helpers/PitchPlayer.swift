//
//  PitchPlayer.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 11/7/21.
//  Copyright © 2021 David Freeman. All rights reserved.
//

import SwiftUI
import Foundation
import AVFoundation
var pitchSound: AVAudioPlayer!

class PitchPlayer {
    public let pitches = ["F", "F♯", "G", "A♭", "A", "B♭", "B", "C", "C♯", "D", "E♭", "E"]
    let pitchNames = ["FNatural", "FSharp", "GNatural", "AFlat", "ANatural", "BFlat", "BNatural", "CNatural", "CSharp", "DNatural", "EFlat", "ENaturalHigh"]
    
    public func playPitch(selectedPitch: String) {
        if pitchSound != nil && pitchSound!.isPlaying {
            pitchSound?.stop()
            return
        }
        
        let path = Bundle.main.path(forResource: pitchNames[pitches.firstIndex(of: selectedPitch)!], ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        do {
            let ignoreSilentMode = !UserDefaults.standard.bool(forKey: UserDefaultsKeys().respectSilentMode)
            if ignoreSilentMode {
                try AVAudioSession.sharedInstance().setCategory(.playback)
            } else {
                try AVAudioSession.sharedInstance().setCategory(.ambient)
            }
            pitchSound = try AVAudioPlayer(contentsOf: url)
            pitchSound?.volume = 1.0
            pitchSound?.play()
        } catch {
            print("couldn't load file")
        }
    }
}
