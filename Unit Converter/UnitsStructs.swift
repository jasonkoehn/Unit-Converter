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
    Converters(name: "Angle", units: AngleValues, inUnit: "Degrees", outUnit: "Degrees"),
//    Converters(name: "Area", units: AreaValues, inUnit: "Square Feet", outUnit: "Square Feet"),
    Converters(name: "Length", units: LengthValues, inUnit: "Meters", outUnit: "Meters"),
    Converters(name: "Mass", units: MassValues, inUnit: "Kilograms", outUnit: "Kilograms")]


struct Units {
    var text: String
    var unit: Dimension
}
var AccelerationValues = ["Meters Per Second Squared", "Gravity"]

var AngleValues = ["Degrees", "Arc Minutes", "Arc Seconds", "Radians", "Gradians", "Revolutions"]
//
var AreaValues = ["Square Megameters", "Square Kilometers", "Square Meters", "Square Centimeters", "Square Millimeters", "Square Micrometers", "Square Nanometers", "Square Inches", "Square Feet", "Square Yards", "Square Miles", "Acres", "Ares", "Hectares"]

var ConcentrationMassValues = ["Grams Per Liter", "Milligrams Per Deciliter", "Millimoles Per Liter"]

var DurationValues = ["Seconds", "Minutes", "Hours"]

var ElectricChargeValues = ["Coulombs", "Megaampere Hours", "Kiloampere Hours", "Ampere Hours", "Milliampere Hours", "Microampere Hours"]

var ElectricCurrentValues = ["Megaamperes", "Kiloamperes", "Amperes", "Milliamperes", "Microamperes"]

var ElectricPotentialDifferenceValues = ["Megavolts", "Kilovolts", "Volts", "Millivolts", "Microvolts"]

var ElectricResistanceValues = ["Megaohms", "Kiloohms", "Ohms", "Milliohms", "Microohms"]

var EnergyValues = ["Kilojoules", "Joules", "Kilocalories", "Calories", "Kilowatt Hours"]

var FrequencyValues = ["Terahertz", "Gigahertz", "Megahertz", "Kilohertz", "Hertz", "Millihertz", "Microhertz", "Nanohertz"]

var FuelEfficiencyValues = ["Liters Per 100 Kilometers", "Miles Per Gallon", "Miles Per Imperial Gallon"]

//var InformationStorageValues = []
//
var LengthValues = ["Megameters", "Kilometers", "Hectometers", "Decameters", "Meters", "Decimeters", "Centimeters", "Millimeters", "Micrometers", "Nanometers", "Picometers", "Inches", "Feet", "Yards", "Miles", "Scandinavian Miles", "Light Years", "Nautical Miles", "Fathoms", "Furlongs", "Astronomical Units", "Parsecs"]

var MassValues = ["Kilograms", "Grams", "Decigrams", "Centigrams", "Milligrams", "Micrograms", "Nanograms", "Picograms", "Ounces", "Pounds", "Stones", "MetricTons", "ShortTons", "Carats", "OuncesTroy", "Slugs"]
//
var PowerValues = ["Terawatts", "Gigawatts", "Megawatts", "Kilowatts", "Watts", "Milliwatts", "Microwatts", "Nanowatts", "Picowatts", "Femtowatts", "Horsepower"]

var PressureValues = ["Newtons Per Meter Squared", "Gigapascals", "Megapascals", "Kilopascals", "Hectopascals", "Inches of Mercury", "Bars", "Millibars", "Millimeters of Mercury", "Pounds Per Square Inch"]

var SpeedValues = ["Meters Per Second", "Kilometers Per Hour", "Miles Per Hour", "Knots"]

var TemperatureValues = ["Kelvin", "Degree Celsius", "Degree Fahrenheit"]

var VolumeValues = ["Megaliters", "Kiloliters", "Liters", "Deciliters", "Centiliters", "Milliliters", "Cubic Kilometers", "Cubic Meters", "Cubic Decimeters", "Cubic Millimeters", "Cubic Inches", "Cubic Feet", "Cubic Yards", "Cubic Miles", "Acre Feet", "Bushels", "Teaspoons", "Tablespoons", "Fluid Ounces", "Cups", "Pints", "Quarts", "Gallons", "Imperial Teaspoons", "Imperial Tablespoons", "Imperial Fluid Ounces", "Imperial Pints", "Imperial Quarts", "Imperial Gallons", "Metric Cups"]
