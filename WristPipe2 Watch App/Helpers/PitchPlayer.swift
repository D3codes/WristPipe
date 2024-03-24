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
    public let pitches: [Pitch] = [
        Pitch(id: 0, note: "F", fileName: "FNatural", xOff: sin((Double.pi/6) * Double(0)), yOff: -cos((Double.pi/6) * Double(0))),
        Pitch(id: 1, note: "F♯", fileName: "FSharp", xOff: sin((Double.pi/6) * Double(1)), yOff: -cos((Double.pi/6) * Double(1))),
        Pitch(id: 2, note: "G", fileName: "GNatural", xOff: sin((Double.pi/6) * Double(2)), yOff: -cos((Double.pi/6) * Double(2))),
        Pitch(id: 3, note: "A♭", fileName: "AFlat", xOff: sin((Double.pi/6) * Double(3)), yOff: -cos((Double.pi/6) * Double(3))),
        Pitch(id: 4, note: "A", fileName: "ANatural", xOff: sin((Double.pi/6) * Double(4)), yOff: -cos((Double.pi/6) * Double(4))),
        Pitch(id: 5, note: "B♭", fileName: "BFlat", xOff: sin((Double.pi/6) * Double(5)), yOff: -cos((Double.pi/6) * Double(5))),
        Pitch(id: 6, note: "B", fileName: "BNatural", xOff: sin((Double.pi/6) * Double(6)), yOff: -cos((Double.pi/6) * Double(6))),
        Pitch(id: 7, note: "C", fileName: "CNatural", xOff: sin((Double.pi/6) * Double(7)), yOff: -cos((Double.pi/6) * Double(7))),
        Pitch(id: 8, note: "C♯", fileName: "CSharp", xOff: sin((Double.pi/6) * Double(8)), yOff: -cos((Double.pi/6) * Double(8))),
        Pitch(id: 9, note: "D", fileName: "DNatural", xOff: sin((Double.pi/6) * Double(9)), yOff: -cos((Double.pi/6) * Double(9))),
        Pitch(id: 10, note: "E♭", fileName: "EFlat", xOff: sin((Double.pi/6) * Double(10)), yOff: -cos((Double.pi/6) * Double(10))),
        Pitch(id: 11, note: "E", fileName: "ENaturalHigh", xOff: sin((Double.pi/6) * Double(11)), yOff: -cos((Double.pi/6) * Double(11)))
    ]
        
    public func stopPlaying() {
        if pitchSound != nil && pitchSound!.isPlaying {
            pitchSound?.stop()
        }
    }
    
    public func playPitch(selectedPitch: String) {
        if pitchSound != nil && pitchSound!.isPlaying {
            pitchSound?.stop()
            return
        }
        
        let path = Bundle.main.path(forResource: selectedPitch, ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        do {
            //let ignoreSilentMode = !UserDefaults.standard.bool(forKey: UserDefaultsKeys().respectSilentMode)
            let ignoreSilentMode = true
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
