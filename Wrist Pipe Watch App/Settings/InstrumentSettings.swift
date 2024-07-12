//
//  InstrumentSettings.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/25/24.
//

import SwiftUI
import TipKit

struct InstrumentSettings: View {
    @AppStorage(UserDefaultsKeys().octave) private var octave = Octave.mid.rawValue
    @State var selectedInstrument: Instrument = pitchPipe
    let defaults = UserDefaults.standard
    
    @State var showSheet = false
    
    private let octaveSelectTip = OctaveSelectTip()
    
    func getSelectedInstrument() {
        if let data = defaults.object(forKey: UserDefaultsKeys().instrument) as? Data,
        let item = try? JSONDecoder().decode(Instrument.self, from: data) {
            self.selectedInstrument = item
        }
    }
    
    private func saveSelectedInstrument() {
        if let encoded = try? JSONEncoder().encode(selectedInstrument) {
            self.defaults.set(encoded, forKey: UserDefaultsKeys().instrument)
            self.defaults.synchronize()
        }
        OctaveSelectTip.instrumentSelected.sendDonation()
    }
    
    var body: some View {
        ZStack {
            List(Instruments, id:\.self) { instrument in
                Button(action: {
                    if instrument != selectedInstrument {
                        octave = Octave.mid.rawValue
                        selectedInstrument = instrument
                        saveSelectedInstrument()
                    }
                }, label: {
                    HStack {
                        Text(instrument.name)
                        Spacer()
                        if selectedInstrument == instrument {
                            Image(systemName: "checkmark")
                        }
                    }
                })
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showSheet = true
                        OctaveSelectTip.alreadyDiscovered = true
                    } label: {
                        switch octave {
                        case Octave.low.rawValue: Image("custom.music.note.badge.arrow.down")
                        case Octave.high.rawValue: Image("custom.music.note.badge.arrow.up")
                        default: Image(systemName: "music.note")
                        }
                    }
                    .foregroundStyle(Color.white)
                    .contentTransition(.symbolEffect(.replace))
                    .disabled(!selectedInstrument.hasHighOctave && !selectedInstrument.hasLowOctave)
                }
            }
            .sheet(isPresented: $showSheet) {
                List {
                    Section {
                        Button(action: {
                            octave = Octave.high.rawValue
                            showSheet = false
                        }, label: {
                            HStack {
                                Image("custom.music.note.badge.arrow.up")
                                    .padding(.trailing, 10)
                                Text("High")
                                Spacer()
                                if octave == Octave.high.rawValue {
                                    Image(systemName: "checkmark")
                                }
                            }
                        })
                        .disabled(!selectedInstrument.hasHighOctave)
                        Button(action: {
                            octave = Octave.mid.rawValue
                            showSheet = false
                        }, label: {
                            HStack {
                                Image(systemName: "music.note")
                                    .padding(.trailing, 10)
                                Text("Mid")
                                Spacer()
                                if octave == Octave.mid.rawValue {
                                    Image(systemName: "checkmark")
                                }
                            }
                        })
                        Button(action: {
                            octave = Octave.low.rawValue
                            showSheet = false
                        }, label: {
                            HStack {
                                Image("custom.music.note.badge.arrow.down")
                                    .padding(.trailing, 10)
                                Text("Low")
                                Spacer()
                                if octave == Octave.low.rawValue {
                                    Image(systemName: "checkmark")
                                }
                            }
                        })
                        .disabled(!selectedInstrument.hasLowOctave)
                    } header: {
                        Text("Octave")
                            .font(.title3)
                    }
                }
            }
            .onAppear(perform: getSelectedInstrument)
            TipView(octaveSelectTip)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        }
    }
}

#Preview {
    NavigationView {
        InstrumentSettings()
    }
}
