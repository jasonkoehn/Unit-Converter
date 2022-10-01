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
    Converter(name: "Concentration Mass", units: ConcentrationMassValues, inUnit: "Grams Per Liter", outUnit: "Grams Per Liter"),
    Converter(name: "Duration", units: DurationValues, inUnit: "Seconds", outUnit: "Hours"),
    Converter(name: "Electric Charge", units: ElectricChargeValues, inUnit: "Ampere Hours", outUnit: "Ampere Hours"),
    Converter(name: "Electric Current", units: ElectricCurrentValues, inUnit: "Amperes", outUnit: "Amperes"),
    Converter(name: "Electric Potential Difference", units: ElectricPotentialDifferenceValues, inUnit: "Volts", outUnit: "Volts"),
    Converter(name: "Electric Resistance", units: ElectricResistanceValues, inUnit: "Ohms", outUnit: "Ohms"),
    Converter(name: "Energy", units: EnergyValues, inUnit: "Kilowatt Hours", outUnit: "Joules"),
    Converter(name: "Frequency", units: FrequencyValues, inUnit: "Megahertz", outUnit: "Megahertz"),
    Converter(name: "Fuel Efficiency", units: FuelEfficiencyValues, inUnit: "Miles Per Gallon", outUnit: "Liters Per 100 Kilometers")
]
//Converters(name: "Information Storage", units: InformationStorageValues),
//Converters(name: "Length", units: LengthValues),
//Converters(name: "Mass", units: MassValues),
//Converters(name: "Power", units: PowerValues),
//Converters(name: "Pressure", units: PressureValues),
//Converters(name: "Speed", units: SpeedValues),
//Converters(name: "Temperature", units: TemperatureValues),
//Converters(name: "Volume", units: VolumeValues)
