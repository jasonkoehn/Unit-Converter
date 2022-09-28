//
//  SwiftUIView.swift
//  Unit Converter
//
//  Created by Jason Koehn on 9/21/22.
//

import SwiftUI

struct ConvertersView: View {
    var name: String
    var units: [String]
    @State var firstAmount: Double = 1
    @State var inUnit: String = ""
    @State var outUnit: String = ""
    @FocusState var isInputActive: Bool
    var body: some View {
        VStack {
            Text(name)
                .font(.system(size: 25))
                .frame(height: 20)
                .padding(.top, 15)
            HStack {
                Spacer().overlay(
                    VStack {
                        Picker("Unit", selection: $inUnit) {
                            ForEach(units, id: \.self) { unit in
                                Text(unit)
                            }
                        }
                        .accentColor(Color(.systemGreen))
                        .onChange(of: inUnit) { _ in
                            UserDefaults.standard.set(inUnit, forKey: "InUnit"+name)
                        }
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
                )
                Button(action: {
                    let inu = inUnit
                    let outu = outUnit
                    inUnit = outu
                    outUnit = inu
                }) {
                    Image(systemName: "arrow.right")
                        .font(.system(size: 23))
                        .foregroundColor(Color("Text"))
                }
                Spacer().overlay(
                    VStack {
                        Picker("Unit", selection: $outUnit) {
                            ForEach(units, id: \.self) { unit in
                                Text(unit)
                            }
                        }
                        .accentColor(Color(.systemGreen))
                        .onChange(of: outUnit) { _ in
                            UserDefaults.standard.set(outUnit, forKey: "OutUnit"+name)
                        }
                        .padding(.vertical, 5)
                        Text(SNum(from: Measurement(value: firstAmount, unit: SwitchToUnits(text: inUnit)).converted(to: SwitchToUnits(text: outUnit)).value as NSNumber))
                            .font(.system(size: 25))
                            .textSelection(.enabled)
                    }
                )
            }
            .padding(.top, 30)
            .padding(.bottom, 53)
        }
        .background(Color(.systemGray5))
        .cornerRadius(15)
        .padding(.horizontal, 8)
        .padding(.vertical, 2)
        .task {
            inUnit = UserDefaults.standard.string(forKey: "InUnit"+name) ?? ""
            outUnit = UserDefaults.standard.string(forKey: "OutUnit"+name) ?? ""
        }
    }
    func SNum(from: NSNumber) -> String {
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 4
        return formatter.string(from: from)!
    }
}
