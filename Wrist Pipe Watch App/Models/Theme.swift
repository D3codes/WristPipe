//
//  Theme.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 2/25/24.
//

import Foundation
import SwiftUI

protocol Theme: Identifiable, Equatable {
    var id: Int { get set }
    var name: String { get set }
    
    func getBackground() -> any View
    
    var selectorColor: Color { get set }
    var selectorTextColor: Color { get set }
    var selectorBackgroundColor: [Color] { get set }
    
    var pitchBackgroundUnselectedColor: [Color] { get set }
    var pitchTextUnselectedColor: Color { get set }
    var pitchUnselectedOpacity: Double { get set }
    
    var pitchBackgroundSelectedColor: [Color] { get set }
    var pitchTextSelectedColor: Color { get set }
    var pitchSelectedOpacity: Double { get set }
    
    var logo: Image? { get set }
    var logoXScale: Double { get set }
    var logoYScale: Double { get set }
}
