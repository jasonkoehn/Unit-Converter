//
//  MassConverterView.swift
//  Unit Converter
//
//  Created by Jason Koehn on 9/21/22.
//

import SwiftUI

struct UnitMassConverterView: View {
    @State var firstAmount: Double = 1
    @State var firstUnit: UnitMass = .kilograms
    @State var secondUnit: UnitMass = .kilograms
    @FocusState var isInputActive: Bool
    var body: some View {
        VStack {
            // Name
            Text("Mass")
                .font(.system(size: 25))
                .frame(height: 20)
            
            // Pickers
            HStack {
                Spacer()
                Picker("Unit", selection: $firstUnit) {
                    Group {
                        Text("Kilograms").tag(UnitMass.kilograms)
                        Text("Grams").tag(UnitMass.grams)
                        Text("Pounds").tag(UnitMass.pounds)
                        Text("Ounces").tag(UnitMass.ounces)
                        Text("Carats").tag(UnitMass.carats)
                        Text("Centigrams").tag(UnitMass.centigrams)
                        Text("Decigrams").tag(UnitMass.decigrams)
                        Text("MetricTons").tag(UnitMass.metricTons)
                    }
                    Group {
                        Text("Micrograms").tag(UnitMass.micrograms)
                        Text("Milligrams").tag(UnitMass.milligrams)
                        Text("Nanograms").tag(UnitMass.nanograms)
                        Text("OuncesTroy").tag(UnitMass.ouncesTroy)
                        Text("Picograms").tag(UnitMass.picograms)
                        Text("ShortTons").tag(UnitMass.shortTons)
                        Text("Slugs").tag(UnitMass.slugs)
                        Text("Stones").tag(UnitMass.stones)
                    }
                }
                .accentColor(Color(.systemGreen))
                Spacer()
                Image(systemName: "arrow.right")
                Spacer()
                Picker("Unit", selection: $secondUnit) {
                    Group {
                        Text("Kilograms").tag(UnitMass.kilograms)
                        Text("Grams").tag(UnitMass.grams)
                        Text("Pounds").tag(UnitMass.pounds)
                        Text("Ounces").tag(UnitMass.ounces)
                        Text("Carats").tag(UnitMass.carats)
                        Text("Centigrams").tag(UnitMass.centigrams)
                        Text("Decigrams").tag(UnitMass.decigrams)
                        Text("MetricTons").tag(UnitMass.metricTons)
                    }
                    Group {
                        Text("Micrograms").tag(UnitMass.micrograms)
                        Text("Milligrams").tag(UnitMass.milligrams)
                        Text("Nanograms").tag(UnitMass.nanograms)
                        Text("OuncesTroy").tag(UnitMass.ouncesTroy)
                        Text("Picograms").tag(UnitMass.picograms)
                        Text("ShortTons").tag(UnitMass.shortTons)
                        Text("Slugs").tag(UnitMass.slugs)
                        Text("Stones").tag(UnitMass.stones)
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

struct UnitMassConverterView_Previews: PreviewProvider {
    static var previews: some View {
        UnitMassConverterView()
    }
}
