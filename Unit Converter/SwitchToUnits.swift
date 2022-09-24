//
//  SwitchToUnits.swift
//  Unit Converter
//
//  Created by Jason Koehn on 9/23/22.
//

import Foundation

func SwitchToUnits(text: String) -> Dimension {
    var unitName: Dimension
    switch text {
        //UnitAcceleration
    case "Meters Per Second Squared":
        unitName = UnitAcceleration.metersPerSecondSquared
    case "Gravity":
        unitName = UnitAcceleration.gravity
        
        //UnitLength
    case "Megameters":
        unitName = UnitLength.megameters
    case "Kilometers":
        unitName = UnitLength.kilometers
    case "Hectometers":
        unitName = UnitLength.hectometers
    case "Decameters":
        unitName = UnitLength.decameters
    case "Meters":
        unitName = UnitLength.meters
    case "Decimeters":
        unitName = UnitLength.decameters
    case "Centimeters":
        unitName = UnitLength.centimeters
    case "Millimeters":
        unitName = UnitLength.millimeters
    case "Micrometers":
        unitName = UnitLength.micrometers
    case "Nanometers":
        unitName = UnitLength.nanometers
    case "Picometers":
        unitName = UnitLength.picometers
    case "Inches":
        unitName = UnitLength.inches
    case "Feet":
        unitName = UnitLength.feet
    case "Yards":
        unitName = UnitLength.yards
    case "Miles":
        unitName = UnitLength.miles
    case "Scandinavian Miles":
        unitName = UnitLength.scandinavianMiles
    case "Light Years":
        unitName = UnitLength.lightyears
    case "Nautical Miles":
        unitName = UnitLength.nauticalMiles
    case "Fathoms":
        unitName = UnitLength.fathoms
    case "Furlongs":
        unitName = UnitLength.furlongs
    case "Astronomical Units":
        unitName = UnitLength.astronomicalUnits
    case "Parsecs":
        unitName = UnitLength.parsecs
        
        //UnitMass
    case "Kilograms":
        unitName = UnitMass.kilograms
    case "Grams":
        unitName = UnitMass.grams
    case "Decigrams":
        unitName = UnitMass.decigrams
    case "Centigrams":
        unitName = UnitMass.centigrams
    case "Milligrams":
        unitName = UnitMass.milligrams
    case "Micrograms":
        unitName = UnitMass.micrograms
    case "Nanograms":
        unitName = UnitMass.nanograms
    case "Picograms":
        unitName = UnitMass.picograms
    case "Ounces":
        unitName = UnitMass.ounces
    case "Pounds":
        unitName = UnitMass.pounds
    case "Stones":
        unitName = UnitMass.stones
    case "MetricTons":
        unitName = UnitMass.metricTons
    case "ShortTons":
        unitName = UnitMass.shortTons
    case "Carats":
        unitName = UnitMass.carats
    case "OuncesTroy":
        unitName = UnitMass.ouncesTroy
    case "Slugs":
        unitName = UnitMass.slugs
        
        //Defauts
    default:
        unitName = UnitLength.meters
    }
    return unitName
}
