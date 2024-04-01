//
//  CircleCitySoundTheme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/26/24.
//

import SwiftUI

struct CircleCitySoundTheme: Theme {
    var id: Int = 1101
    var name: String = "Circle City Sound"
    
    private let circleCityRed: Color = Color(red: 0.69, green: 0.19, blue: 0.31)
    
    func getBackground() -> any View {
        return AnyView(
            VStack {
                Spacer()
                Text("Inspire. Connect. Sing.").font(.callout).foregroundStyle(circleCityRed)
            }
        )
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.blue)
    }
    
    var selectorColor: Color = Color(red: 0.69, green: 0.19, blue: 0.31)
    var selectorTextColor: Color = .black
    var selectorBackgroundColor: [Color] = [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue]
    
    var pitchBackgroundUnselectedColor: [Color] = [.white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white]
    var pitchTextUnselectedColor: Color = .black
    var pitchUnselectedOpacity: Double = 0.6
    
    var pitchBackgroundSelectedColor: [Color] = [.white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white]
    var pitchTextSelectedColor: Color = .black
    var pitchSelectedOpacity: Double = 0.9
    
    var logo: Image? = Image("CCS_logo")
    var logoXScale: Double = -20.0
    var logoYScale: Double = -20.0
}

#Preview {
    PitchPipe(theme: CircleCitySoundTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(CircleCitySoundTheme().getBackground())
}
