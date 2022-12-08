//
//  Extensions.swift
//  Unit Converter
//
//  Created by Jason Koehn on 10/31/22.
//

import SwiftUI

extension Formatter {
    static let inNumberFormat: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .none
        formatter.zeroSymbol  = ""
        return formatter
    }()
}

func FormatNum(from: NSNumber) -> String {
    let formatter = NumberFormatter()
    formatter.minimumFractionDigits = 0
    formatter.maximumFractionDigits = 4
    return formatter.string(from: from)!
}

func getColorsFromPicker(pickerColor: Color) -> (red: CGFloat, green: CGFloat, blue: CGFloat) {
    let colorString = "\(pickerColor)"
    let colorArray: [String] = colorString.components(separatedBy: " ")
    var red = 0.0
    var green = 0.0
    var blue = 0.0
    if colorArray.count > 1 {
        let r: CGFloat = CGFloat((Float(colorArray[1]) ?? 1))
        let g: CGFloat = CGFloat((Float(colorArray[2]) ?? 1))
        let b: CGFloat = CGFloat((Float(colorArray[3]) ?? 1))
//        if (r < 0.0) {r = 0.0}
//        if (g < 0.0) {g = 0.0}
//        if (b < 0.0) {b = 0.0}
//        if (r > 1.0) {r = 1.0}
//        if (g > 1.0) {g = 1.0}
//        if (b > 1.0) {b = 1.0}
        red = r
        green = g
        blue = b
    }
    return (red, green, blue)
}
