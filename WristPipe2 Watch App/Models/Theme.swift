//
//  Theme.swift
//  WristPipe2 Watch App
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
    
    var isColorTheme: Bool { get set }
    var isCauseTheme: Bool { get set }
    var isBHSTheme: Bool { get set }
    var isCARTheme: Bool { get set }
    var isNSCTheme: Bool { get set }
    var isCSDTheme: Bool { get set }
    var isEVGTheme: Bool { get set }
    var isFWDTheme: Bool { get set }
    var isILLTheme: Bool { get set }
    var isJADTheme: Bool { get set }
    var isLOLTheme: Bool { get set }
    var isMADTheme: Bool { get set }
    var isNEDTheme: Bool { get set }
    var isONTTheme: Bool { get set }
    var isPIOTheme: Bool { get set }
    var isRMDTheme: Bool { get set }
    var isSLDTheme: Bool { get set }
    var isSHDTheme: Bool { get set }
    var isSWDTheme: Bool { get set }
    var isSUNTheme: Bool { get set }
}
