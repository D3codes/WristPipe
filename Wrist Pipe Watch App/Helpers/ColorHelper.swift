//
//  ColorHelper.swift
//  Wrist Pipe
//
//  Created by David Freeman on 7/26/24.
//

import SwiftUI

struct ColorHelper {
    func getRandomColor() -> Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1),
            opacity: 1
        )
    }
    
    func getContrastText(for color: Color) -> Color {
        var r, g, b, a: CGFloat
        (r, g, b, a) = (0, 0, 0, 0)
        UIColor(color).getRed(&r, green: &g, blue: &b, alpha: &a)
        let luminance = 0.2126 * r + 0.7152 * g + 0.0722 * b
        return  luminance < 0.6 ? Color.white : Color.black
    }
}
