//
//  UnitLengthConverterView.swift
//  Unit Converter
//
//  Created by Jason Koehn on 9/21/22.
//

import SwiftUI

struct UnitLengthConverterView: View {
    @State var firstAmount: Double = 1
    @State var firstUnit: UnitLength = .meters
    @State var secondUnit: UnitLength = .meters
    @FocusState var isInputActive: Bool
    var body: some View {
        VStack {
            // Name
            Text("Length")
                .font(.system(size: 25))
                .frame(height: 20)
            
            // Pickers
            HStack {
                Spacer()
                Picker("Unit", selection: $firstUnit) {
                    Group {
                        Text("Megameters").tag(UnitLength.megameters)
                        Text("Kilometers").tag(UnitLength.kilometers)
                        Text("Hectometers").tag(UnitLength.hectometers)
                        Text("Decameters").tag(UnitLength.decameters)
                        Text("Meters").tag(UnitLength.meters)
                        Text("Decimeters").tag(UnitLength.decameters)
                        Text("Centimeters").tag(UnitLength.centimeters)
                    }
                    Group {
                        Text("Millimeters").tag(UnitLength.millimeters)
                        Text("Micrometers").tag(UnitLength.micrometers)
                        Text("Nanometers").tag(UnitLength.nanometers)
                        Text("Picometers").tag(UnitLength.picometers)
                        Text("Inches").tag(UnitLength.inches)
                        Text("Feet").tag(UnitLength.feet)
                        Text("Yards").tag(UnitLength.yards)
                        Text("Miles").tag(UnitLength.miles)
                    }
                    Group {
                        Text("Scandinavian Miles").tag(UnitLength.scandinavianMiles)
                        Text("Light Years").tag(UnitLength.lightyears)
                        Text("Nautical Miles").tag(UnitLength.nauticalMiles)
                        Text("Fathoms").tag(UnitLength.fathoms)
                        Text("Furlongs").tag(UnitLength.furlongs)
                        Text("Astronomical Units").tag(UnitLength.astronomicalUnits)
                        Text("Parsecs").tag(UnitLength.parsecs)
                    }
                }
                .accentColor(Color(.systemGreen))
                Spacer()
                Image(systemName: "arrow.right")
                Spacer()
                Picker("Unit", selection: $secondUnit) {
                    Group {
                        Text("Megameters").tag(UnitLength.megameters)
                        Text("Kilometers").tag(UnitLength.kilometers)
                        Text("Hectometers").tag(UnitLength.hectometers)
                        Text("Decameters").tag(UnitLength.decameters)
                        Text("Meters").tag(UnitLength.meters)
                        Text("Decimeters").tag(UnitLength.decameters)
                        Text("Centimeters").tag(UnitLength.centimeters)
                    }
                    Group {
                        Text("Millimeters").tag(UnitLength.millimeters)
                        Text("Micrometers").tag(UnitLength.micrometers)
                        Text("Nanometers").tag(UnitLength.nanometers)
                        Text("Picometers").tag(UnitLength.picometers)
                        Text("Inches").tag(UnitLength.inches)
                        Text("Feet").tag(UnitLength.feet)
                        Text("Yards").tag(UnitLength.yards)
                        Text("Miles").tag(UnitLength.miles)
                    }
                    Group {
                        Text("Scandinavian Miles").tag(UnitLength.scandinavianMiles)
                        Text("Light Years").tag(UnitLength.lightyears)
                        Text("Nautical Miles").tag(UnitLength.nauticalMiles)
                        Text("Fathoms").tag(UnitLength.fathoms)
                        Text("Furlongs").tag(UnitLength.furlongs)
                        Text("Astronomical Units").tag(UnitLength.astronomicalUnits)
                        Text("Parsecs").tag(UnitLength.parsecs)
                    }
                }
                .accentColor(Color(.systemGreen))
                Spacer()
            }
            
            // TextField and Output
            HStack {
                Spacer()
                HStack {
                    TextField("", value: $firstAmount, formatter: Formatter.inNumberFormat)
                        .onTapGesture {
                            firstAmount = 0
                        }
                        .keyboardType(.decimalPad)
                        .textFieldStyle(.roundedBorder)
                        .focused($isInputActive)
                        .toolbar {
                            ToolbarItemGroup(placement: .keyboard) {
                                Spacer()
                                Button("Done") {
                                    isInputActive = false
                                }
                            }
                        }
                        .frame(width: 80)
                }.frame(width: 180)
                Spacer()
                HStack {
                    Text(String(format: "%.4f", Measurement(value: firstAmount, unit: firstUnit).converted(to: secondUnit).value))
                        .font(.system(size: 25))
                        .textSelection(.enabled)
                }.frame(width: 180)
                Spacer()
            }
            
            
        }
        .frame(height: 140)
        .background(Color(.systemGray5))
        .cornerRadius(15)
        .padding(.horizontal, 20)
        .padding(.vertical, 3)
    }
}

struct UnitLengthConverterView_Previews: PreviewProvider {
    static var previews: some View {
        UnitLengthConverterView()
    }
}
