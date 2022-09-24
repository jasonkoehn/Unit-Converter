//
//  SwiftUIView.swift
//  Unit Converter
//
//  Created by Jason Koehn on 9/21/22.
//

import SwiftUI

struct ConvertersView: View {
    var name: String
    var units: [Units]
    @State var firstAmount: Double = 1
    @State var inUnit: Dimension
    @State var outUnit: Dimension
    @FocusState var isInputActive: Bool
    var body: some View {
        VStack {
            Text(name)
                .font(.system(size: 25))
                .frame(height: 20)
            HStack {
                VStack {
                    Picker("Unit", selection: $inUnit) {
                        ForEach(units, id: \.text) { unit in
                            Text(unit.text).tag(unit.unit)
                        }
                    }
                    .accentColor(Color(.systemGreen))
                    .onChange(of: inUnit) { _ in
                        UserDefaults.standard.set(SwitchFromUnits(unit: inUnit), forKey: "InUnit"+name)
                    }
                    TextField("", value: $firstAmount, formatter: Formatter.inNumberFormat)
                        .onTapGesture {
                            firstAmount = 0
                        }
                        .keyboardType(.decimalPad)
                        .textFieldStyle(.roundedBorder)
                        .focused($isInputActive)
                        .frame(width: 80)
                }.frame(minWidth: 180)
                Image(systemName: "arrow.right")
                    .font(.system(size: 20))
                VStack {
                    Picker("Unit", selection: $outUnit) {
                        ForEach(units, id: \.text) { unit in
                            Text(unit.text).tag(unit.unit)
                        }
                    }
                    .accentColor(Color(.systemGreen))
                    .onChange(of: outUnit) { _ in
                        UserDefaults.standard.set(SwitchFromUnits(unit: outUnit), forKey: "OutUnit"+name)
                    }
                    Text(SNum(from: Measurement(value: firstAmount, unit: inUnit).converted(to: outUnit).value as NSNumber))
                        .font(.system(size: 25))
                        .textSelection(.enabled)
                }.frame(minWidth: 180)
            }
        }
        .frame(height: 140)
        .background(Color(.systemGray5))
        .cornerRadius(15)
        .padding(.horizontal, 20)
        .padding(.vertical, 3)
        .task {
            inUnit = SwitchToUnits(text: UserDefaults.standard.string(forKey: "InUnit"+name) ?? "")
            outUnit = SwitchToUnits(text: UserDefaults.standard.string(forKey: "OutUnit"+name) ?? "")
        }
    }
    func SNum(from: NSNumber) -> String {
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 4
        return formatter.string(from: from)!
    }
}
