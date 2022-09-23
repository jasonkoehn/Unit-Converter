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
            // Name
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
                    TextField("", value: $firstAmount, formatter: Formatter.inNumberFormat)
                        .onTapGesture {
                            firstAmount = 0
                        }
                        .keyboardType(.decimalPad)
                        .textFieldStyle(.roundedBorder)
                        .focused($isInputActive)
                        .frame(width: 80)
                }.frame(width: 180)
                Image(systemName: "arrow.right")
                    .font(.system(size: 20))
                VStack {
                    Picker("Unit", selection: $outUnit) {
                        ForEach(units, id: \.text) { unit in
                            Text(unit.text).tag(unit.unit)
                        }
                    }
                    .accentColor(Color(.systemGreen))
                    Text(SNum(from: Measurement(value: firstAmount, unit: inUnit).converted(to: outUnit).value as NSNumber))
                        .font(.system(size: 25))
                        .textSelection(.enabled)
                }.frame(width: 180)
            }
        }
        .frame(height: 140)
        .background(Color(.systemGray5))
        .cornerRadius(15)
        .padding(.horizontal, 20)
        .padding(.vertical, 3)
//        .onDisappear {
//            UserDefaults.standard.set($inUnit.rawValue, forKey: "dimension")
//        }
    }
    func SNum(from: NSNumber) -> String {
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 4
        return formatter.string(from: from)!
    }
}
