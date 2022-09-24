//
//  SwitchFromUnits.swift
//  Unit Converter
//
//  Created by Jason Koehn on 9/23/22.
//

import Foundation

func SwitchFromUnits(unit: Dimension) -> String {
    var name: String
    switch unit {
        //UnitAcceleration
    case UnitAcceleration.metersPerSecondSquared:
        name = "Meters Per Second Squared"
    case UnitAcceleration.gravity:
        name = "Gravity"
        
        //UnitLength
    case UnitLength.megameters:
        name = "Megameters"
    case UnitLength.kilometers:
        name = "Kilometers"
    case UnitLength.hectometers:
        name = "Hectometers"
    case UnitLength.decameters:
        name = "Decameters"
    case UnitLength.meters:
        name = "Meters"
    case UnitLength.decimeters:
        name = "Decimeters"
    case UnitLength.centimeters:
        name = "Centimeters"
    case UnitLength.millimeters:
        name = "Millimeters"
    case UnitLength.micrometers:
        name = "Micrometers"
    case UnitLength.nanometers:
        name = "Nanometers"
    case UnitLength.picometers:
        name = "Picometers"
    case UnitLength.inches:
        name = "Inches"
    case UnitLength.feet:
        name = "Feet"
    case UnitLength.yards:
        name = "Yards"
    case UnitLength.miles:
        name = "Miles"
    case UnitLength.scandinavianMiles:
        name = "Scandinavian Miles"
    case UnitLength.lightyears:
        name = "Light Years"
    case UnitLength.nauticalMiles:
        name = "Nautical Miles"
    case UnitLength.fathoms:
        name = "Fathoms"
    case UnitLength.furlongs:
        name = "Furlongs"
    case UnitLength.astronomicalUnits:
        name = "Astronomical Units"
    case UnitLength.parsecs:
        name = "Parsecs"
        
        //UnitMass
    case UnitMass.kilograms:
        name = "Kilograms"
    case UnitMass.grams:
        name = "Grams"
    case UnitMass.decigrams:
        name = "Decigrams"
    case UnitMass.centigrams:
        name = "Centigrams"
    case UnitMass.milligrams:
        name = "Milligrams"
    case UnitMass.micrograms:
        name = "Micrograms"
    case UnitMass.nanograms:
        name = "Nanograms"
    case UnitMass.picograms:
        name = "Picograms"
    case UnitMass.ounces:
        name = "Ounces"
    case UnitMass.pounds:
        name = "Pounds"
    case UnitMass.stones:
        name = "Stones"
    case UnitMass.metricTons:
        name = "MetricTons"
    case UnitMass.shortTons:
        name = "ShortTons"
    case UnitMass.carats:
        name = "Carats"
    case UnitMass.ouncesTroy:
        name = "OuncesTroy"
    case UnitMass.slugs:
        name = "Slugs"
        
        //Default
    default:
        name = ""
    }
    return name
}
