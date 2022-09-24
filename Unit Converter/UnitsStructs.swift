//
//  UnitsStructs.swift
//  Unit Converter
//
//  Created by Jason Koehn on 9/21/22.
//

import SwiftUI

struct Converters {
    var name: String
    var units: [String]
    var inUnit: String
    var outUnit: String
}

var converters: [Converters] = [
    Converters(name: "Acceleration", units: AccelerationValues, inUnit: "Gravity", outUnit: "Gravity"),
    Converters(name: "Length", units: LengthValues, inUnit: "Meters", outUnit: "Meters"),
    Converters(name: "Mass", units: MassValues, inUnit: "Kilograms", outUnit: "Kilograms")]


struct Units {
    var text: String
    var unit: Dimension
}
var AccelerationValues = ["Meters Per Second Squared", "Gravity"]

var UnitAngleValues: [Units] = []

var UnitAreaValues: [Units] = []

var UnitConcentrationMassValues: [Units] = []

var UnitDispersionValues: [Units] = []

var UnitDurationValues: [Units] = []

var UnitElectricChargeValues: [Units] = []

var UnitElectricCurrentValues: [Units] = []

var UnitElectricPotentialDifferenceValues: [Units] = []

var UnitElectricResistanceValues: [Units] = []

var UnitEnergyValues: [Units] = []

var UnitFrequencyValues: [Units] = []

var UnitFuelEfficiencyValues: [Units] = []

var UnitIlluminanceValues: [Units] = []

var UnitInformationStorageValues: [Units] = []

var LengthValues = ["Megameters", "Kilometers", "Hectometers", "Decameters", "Meters", "Decimeters", "Centimeters", "Millimeters", "Micrometers", "Nanometers", "Picometers", "Inches", "Feet", "Yards", "Miles", "Scandinavian Miles", "Light Years", "Nautical Miles", "Fathoms", "Furlongs", "Astronomical Units", "Parsecs"]

var MassValues = ["Kilograms", "Grams", "Decigrams", "Centigrams", "Milligrams", "Micrograms", "Nanograms", "Picograms", "Ounces", "Pounds", "Stones", "MetricTons", "ShortTons", "Carats", "OuncesTroy", "Slugs"]

var UnitPowerValues: [Units] = []

var UnitPressureValues: [Units] = []

var UnitSpeedValues: [Units] = []

var UnitTemperatureValues: [Units] = []

var UnitVolumeValues: [Units] = []
