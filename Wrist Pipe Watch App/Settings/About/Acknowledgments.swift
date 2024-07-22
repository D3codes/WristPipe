//
//  Acknowledgments.swift
//  Wrist Pipe
//
//  Created by David Freeman on 7/18/24.
//

import SwiftUI

struct Acknowledgments: View {
    
    private let betaTesters: [String] = [
        "Caullen",
        "James",
        "i.phoenix",
        "quaharini2all",
        "matiascloudbirb",
        "u/quangdog"
    ]
    
    var body: some View {
        List {
            Text("Thank you to everyone who helps make Wrist Pipe the best it can be!")
                .listRowBackground(Color.clear)
            ForEach(betaTesters.sorted(by: { $0 < $1 }), id: \.self) { betaTester in
                Text(betaTester)
            }
            
            Text("Thank you to the packages that made Wrist Pipe possible!")
                .listRowBackground(Color.clear)
            VStack(alignment: .leading) {
                Text("Vortex").font(.title3)
                Text("by Paul Hudson")
            }
        }
    }
}

#Preview {
    Acknowledgments()
}
