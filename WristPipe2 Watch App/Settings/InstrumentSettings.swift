//
//  InstrumentSettings.swift
//  WristPipe2 Watch App
//
//  Created by David Freeman on 3/25/24.
//

import SwiftUI

struct InstrumentSettings: View {
    @AppStorage("instrument") private var instrument = "PitchPipe"
    
    private let instruments = [
        "Clarinet",
        "Pitch Pipe",
        "Reed Organ",
        "Trumpet",
        "Whistle"
    ]
    
    var body: some View {
        List(instruments, id:\.self) { inst in
            Button(action: { instrument = inst.filter{!$0.isWhitespace} }, label: {
                HStack {
                    Text(inst)
                    Spacer()
                    if instrument == inst.filter({!$0.isWhitespace}) {
                        Image(systemName: "checkmark")
                    }
                }
            })
        }
    }
}

#Preview {
    InstrumentSettings()
}
