//
//  BetaTesterList.swift
//  Wrist Pipe
//
//  Created by David Freeman on 7/18/24.
//

import SwiftUI

struct BetaTesterList: View {
    
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
        }
    }
}

#Preview {
    BetaTesterList()
}
