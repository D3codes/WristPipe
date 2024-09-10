//
//  PlayFSharpIntent.swift
//  Wrist Pipe
//
//  Created by David Freeman on 7/11/24.
//

//import AppIntents
//import AVFAudio
//
//struct PlayFSharpIntent: AudioPlaybackIntent {
//    static var title: LocalizedStringResource = "Play F Sharp"
//    static var description = IntentDescription("Plays an F Sharp with the set Instrument and Octave")
//    
//    func perform() async throws -> some IntentResult {
//        SoundPlayer.shared.play("PitchPipe_FSharp")
//        return .result()
//    }
//}
//
//class SoundPlayer: NSObject {
//    static let shared = SoundPlayer()
//    
//    private var player: AVAudioPlayer?
//    
//    func play(_ fileName: String) {
//        try? AVAudioSession.sharedInstance().setCategory(.playback, mode: .default, options: [])
//        try? AVAudioSession.sharedInstance().setActive(true)
//
//        let soundURL = Bundle.main.url(forResource: fileName, withExtension: "mp3")!
//        guard let player = try? AVAudioPlayer(contentsOf: soundURL) else { return }
//        
//        self.player = player
//        player.play()
//    }
//}
