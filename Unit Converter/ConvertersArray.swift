//
//  ConvertersArray.swift
//  Unit Converter
//
//  Created by Jason Koehn on 9/30/22.
//

import Foundation

struct Converter {
    var name: String
    var units: [String]
    var inUnit: String
    var outUnit: String
}

var converters: [Converter] = [
    Converter(name: "Acceleration", units: AccelerationValues, inUnit: "Gravity", outUnit: "Gravity"),
    Converter(name: "Angle", units: AngleValues, inUnit: "Degrees", outUnit: "Degrees"),
    Converter(name: "Area", units: AreaValues, inUnit: "Square Meters", outUnit: "Square Feet"),
    Converter(name: "Concentration Mass", units: ConcentrationMassValues, inUnit: "Grams Per Liter", outUnit: "Grams Per Liter")
]
