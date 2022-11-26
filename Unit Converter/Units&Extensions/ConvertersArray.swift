//
//  ConvertersArray.swift
//  Unit Converter
//
//  Created by Jason Koehn on 10/31/22.
//

import Foundation

struct Converter: Codable {
    var name: String
    var units: [String]
    var inUnit: String
    var outUnit: String
}

var initConverters: [Converter] = [
    Converter(name: "Acceleration", units: ["Meters Per Second Squared", "Gravity"], inUnit: "Gravity", outUnit: "Gravity"),
    Converter(name: "Angle", units: ["Degrees", "Arc Minutes", "Arc Seconds", "Radians", "Gradians", "Revolutions"], inUnit: "Degrees", outUnit: "Degrees"),
    Converter(name: "Area", units: ["Square Megameters", "Square Kilometers", "Square Meters", "Square Centimeters", "Square Millimeters", "Square Micrometers", "Square Nanometers", "Square Inches", "Square Feet", "Square Yards", "Square Miles", "Acres", "Ares", "Hectares"], inUnit: "Square Meters", outUnit: "Square Feet"),
    Converter(name: "Concentration Mass", units: ["Grams Per Liter", "Milligrams Per Deciliter"], inUnit: "Grams Per Liter", outUnit: "Grams Per Liter"),
    Converter(name: "Duration", units: ["Seconds", "Minutes", "Hours"], inUnit: "Seconds", outUnit: "Hours"),
    Converter(name: "Electric Charge", units: ["Coulombs", "Megaampere Hours", "Kiloampere Hours", "Ampere Hours", "Milliampere Hours", "Microampere Hours"], inUnit: "Ampere Hours", outUnit: "Ampere Hours"),
    Converter(name: "Electric Current", units: ["Megaamperes", "Kiloamperes", "Amperes", "Milliamperes", "Microamperes"], inUnit: "Amperes", outUnit: "Amperes"),
    Converter(name: "Electric Potential Difference", units: ["Megavolts", "Kilovolts", "Volts", "Millivolts", "Microvolts"], inUnit: "Volts", outUnit: "Volts"),
    Converter(name: "Electric Resistance", units: ["Megaohms", "Kiloohms", "Ohms", "Milliohms", "Microohms"], inUnit: "Ohms", outUnit: "Ohms"),
    Converter(name: "Energy", units: ["Kilojoules", "Joules", "Kilocalories", "Calories", "Kilowatt Hours"], inUnit: "Kilowatt Hours", outUnit: "Joules"),
    Converter(name: "Frequency", units: ["Terahertz", "Gigahertz", "Megahertz", "Kilohertz", "Hertz", "Millihertz", "Microhertz", "Nanohertz"], inUnit: "Megahertz", outUnit: "Megahertz"),
    Converter(name: "Fuel Efficiency", units: ["Liters Per 100 Kilometers", "Miles Per Gallon", "Miles Per Imperial Gallon"], inUnit: "Miles Per Gallon", outUnit: "Liters Per 100 Kilometers"),
    Converter(name: "Information Storage", units: ["Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Petabits", "Exabits", "Zettabits", "Yottabits", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Petabytes", "Exabytes", "Zettabytes", "Yottabytes"], inUnit: "Bits", outUnit: "Bytes"),
    Converter(name: "Length", units: ["Megameters", "Kilometers", "Hectometers", "Decameters", "Meters", "Decimeters", "Centimeters", "Millimeters", "Micrometers", "Nanometers", "Picometers", "Inches", "Feet", "Yards", "Miles", "Scandinavian Miles", "Light Years", "Nautical Miles", "Fathoms", "Furlongs", "Astronomical Units", "Parsecs"], inUnit: "Meters", outUnit: "Yards"),
    Converter(name: "Mass", units: ["Kilograms", "Grams", "Decigrams", "Centigrams", "Milligrams", "Micrograms", "Nanograms", "Picograms", "Ounces", "Pounds", "Stones", "MetricTons", "ShortTons", "Carats", "OuncesTroy", "Slugs"], inUnit: "Kilograms", outUnit: "Pounds"),
    Converter(name: "Power", units: ["Terawatts", "Gigawatts", "Megawatts", "Kilowatts", "Watts", "Milliwatts", "Microwatts", "Nanowatts", "Picowatts", "Femtowatts", "Horsepower"], inUnit: "Kilowatts", outUnit: "Horsepower"),
    Converter(name: "Pressure", units: ["Newtons Per Meter Squared", "Gigapascals", "Megapascals", "Kilopascals", "Hectopascals", "Inches of Mercury", "Bars", "Millibars", "Millimeters of Mercury", "Pounds Per Square Inch"], inUnit: "Bars", outUnit: "Pounds Per Square Inch"),
    Converter(name: "Speed", units: ["Meters Per Second", "Kilometers Per Hour", "Miles Per Hour", "Knots"], inUnit: "Knots", outUnit: "Miles Per Hour"),
    Converter(name: "Temperature", units: ["Kelvin", "Celsius", "Fahrenheit"], inUnit: "Celsius", outUnit: "Fahrenheit"),
    Converter(name: "Volume", units: ["Megaliters", "Kiloliters", "Liters", "Deciliters", "Centiliters", "Milliliters", "Cubic Kilometers", "Cubic Meters", "Cubic Decimeters", "Cubic Millimeters", "Cubic Inches", "Cubic Feet", "Cubic Yards", "Cubic Miles", "Acre Feet", "Bushels", "Teaspoons", "Tablespoons", "Fluid Ounces", "Cups", "Pints", "Quarts", "Gallons", "Imperial Teaspoons", "Imperial Tablespoons", "Imperial Fluid Ounces", "Imperial Pints", "Imperial Quarts", "Imperial Gallons", "Metric Cups"], inUnit: "Gallons", outUnit: "Liters")
]

