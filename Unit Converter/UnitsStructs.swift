//
//  UnitsStructs.swift
//  Unit Converter
//
//  Created by Jason Koehn on 9/21/22.
//

import SwiftUI

struct Units {
    var text: String
    var unit: Dimension
}

var UnitMassValues: [Units] = [Units(text: "Kilograms", unit: UnitMass.kilograms), Units(text: "Grams", unit: UnitMass.grams), Units(text: "Pounds", unit: UnitMass.pounds), Units(text: "Ounces", unit: UnitMass.ounces), Units(text: "Carats", unit: UnitMass.carats), Units(text: "Centigrams", unit: UnitMass.centigrams), Units(text: "Decigrams", unit: UnitMass.decigrams), Units(text: "MetricTons", unit: UnitMass.metricTons), Units(text: "Micrograms", unit: UnitMass.micrograms), Units(text: "Milligrams", unit: UnitMass.milligrams), Units(text: "Nanograms", unit: UnitMass.nanograms), Units(text: "OuncesTroy", unit: UnitMass.ouncesTroy), Units(text: "Picograms", unit: UnitMass.picograms), Units(text: "ShortTons", unit: UnitMass.shortTons), Units(text: "Slugs", unit: UnitMass.slugs), Units(text: "Stones", unit: UnitMass.stones)]

var UnitLengthValues: [Units] = [Units(text: "Megameters", unit: UnitLength.megameters), Units(text: "Kilometers", unit: UnitLength.kilometers), Units(text: "Hectometers", unit: UnitLength.hectometers), Units(text: "Decameters", unit: UnitLength.decameters), Units(text: "Meters", unit: UnitLength.meters), Units(text: "Decimeters", unit: UnitLength.decameters), Units(text: "Centimeters", unit: UnitLength.centimeters), Units(text: "Millimeters", unit: UnitLength.millimeters), Units(text: "Micrometers", unit: UnitLength.micrometers), Units(text: "Nanometers", unit: UnitLength.nanometers), Units(text: "Picometers", unit: UnitLength.picometers), Units(text: "Inches", unit: UnitLength.inches), Units(text: "Feet", unit: UnitLength.feet), Units(text: "Yards", unit: UnitLength.yards), Units(text: "Miles", unit: UnitLength.miles), Units(text: "Scandinavian Miles", unit: UnitLength.scandinavianMiles), Units(text: "Light Years", unit: UnitLength.lightyears), Units(text: "Nautical Miles", unit: UnitLength.nauticalMiles), Units(text: "Fathoms", unit: UnitLength.fathoms), Units(text: "Furlongs", unit: UnitLength.furlongs), Units(text: "Astronomical Units", unit: UnitLength.astronomicalUnits), Units(text: "Parsecs", unit: UnitLength.parsecs)]
