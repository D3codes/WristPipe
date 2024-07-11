//
//  Instruments.swift
//  Wrist Pipe
//
//  Created by David Freeman on 7/10/24.
//

let clarinet = Instrument(id: 1, name: "Clarinet", hasLowOctave: true, hasHighOctave: true)
let pitchPipe = Instrument(id: 2, name: "Pitch Pipe", hasLowOctave: false, hasHighOctave: false)
let reedOrgan = Instrument(id: 3, name: "Reed Organ", hasLowOctave: false, hasHighOctave: true)
let trumpet = Instrument(id: 4, name: "Trumpet", hasLowOctave: true, hasHighOctave: false)
let whistle = Instrument(id: 5, name: "Whistle", hasLowOctave: true, hasHighOctave: false)

let Instruments: [Instrument] = [
    clarinet,
    pitchPipe,
    reedOrgan,
    trumpet,
    whistle
]

enum Octave: String {
    case low = "Bass"
    case mid = ""
    case high = "Tenor"
}
