//
//  Extensions.swift
//  Unit Converter
//
//  Created by Jason Koehn on 9/30/22.
//

import Foundation

extension Formatter {
    static let inNumberFormat: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .none
        formatter.zeroSymbol  = ""
        return formatter
    }()
}
