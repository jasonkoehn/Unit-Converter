//
//  ConverterView.swift
//  Unit Converter
//
//  Created by Jason Koehn on 9/30/22.
//

import SwiftUI

struct ConverterView: View {
    var name: String
    var units: [String]
    @State var inUnit: String
    @State var outUnit: String
    @FocusState var isInputActive: Bool
    @State var firstAmount: Double = 1
    var body: some View {
        VStack {
            Text(name)
                .font(.system(size: 25))
                .frame(height: 20)
                .padding(.top, 15)
            HStack {
                Spacer().overlay {
                    VStack {
                        Picker("Unit", selection: $inUnit) {
                            ForEach(units, id: \.self) { unit in
                                Text(unit).tag(unit)
                            }
                        }
                        .pickerStyle(.menu)
                        .padding(.vertical, 5)
                        TextField("", value: $firstAmount, formatter: Formatter.inNumberFormat)
                            .onTapGesture {
                                firstAmount = 0
                            }
                            .keyboardType(.decimalPad)
                            .textFieldStyle(.roundedBorder)
                            .focused($isInputActive)
                            .frame(width: 100)
                    }
                }
                Button(action: {
                    let inu = inUnit
                    let outu = outUnit
                    inUnit = outu
                    outUnit = inu
                }) {
                    Image(systemName: "arrow.right")
                        .font(.system(size: 23))
                        .foregroundColor(Color("TextColor"))
                }
                Spacer().overlay {
                    VStack {
                        Picker("Unit", selection: $outUnit) {
                            ForEach(units, id: \.self) { unit in
                                Text(unit).tag(unit)
                            }
                        }
                        .pickerStyle(.menu)
                        .padding(.vertical, 5)
                        Text(FormatNum(from: Measurement(value: firstAmount, unit: SwitchToUnits(text: inUnit)).converted(to: SwitchToUnits(text: outUnit)).value as NSNumber))
                            .font(.system(size: 25))
                            .textSelection(.enabled)
                    }
                }
            }
            .padding(.top, 30)
            .padding(.bottom, 53)
        }
        .background(Color(.systemGray5))
        .cornerRadius(15)
    }
}
