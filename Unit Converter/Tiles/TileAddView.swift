//
//  TileAddView.swift
//  Unit Converter
//
//  Created by Jason Koehn on 11/26/22.
//

import SwiftUI

struct TileAddView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var group = "Acceleration"
    @State var units: [String] = []
    @State var initInUnit = ""
    @State var initOutUnit = ""
    @Binding var converter: [Converter]
    @State var customSelection: Bool = false
    @State var customUnits: [String] = []
    @State var name = ""
    @State var unitAmount = "Multiple"
    @State var inUnit = ""
    @State var outUnit = ""
    var body: some View {
        Form {
            Picker("Group:", selection: $group) {
                ForEach(initConverters, id: \.name) { converter in
                    Text(converter.name).tag(converter.name)
                        .task {
                            units = converter.units
                            name = converter.name
                            inUnit = units.first ?? ""
                            outUnit = units.first ?? ""
                        }
                        .onChange(of: group) { group in
                            customUnits = []
                        }
                }
            }
            .pickerStyle(.navigationLink)
            HStack {
                Text("Name:")
                TextField(group, text: $name)
                ZStack {
                    Button(action: {
                        name = ""
                    }) {
                        Image(systemName: "multiply")
                            .font(.system(size: 24))
                    }
                }
            }
            Picker("", selection: $unitAmount) {
                Text("Multiple Units").tag("Multiple")
                Text("Single Selections").tag("Single")
            }
            .pickerStyle(.segmented)
            if unitAmount == "Multiple" {
                Toggle("Custom Units?", isOn: $customSelection)
                if customSelection == true {
                    NavigationLink("Select Units:", destination: MultipleSelectionList(units: units, customUnits: $customUnits))
                        .task {
                            if inUnit == "" {
                                inUnit = customUnits.first ?? ""
                                outUnit = customUnits.first ?? ""
                            }
                        }
                    Picker("Initial In Unit:", selection: $inUnit) {
                        ForEach(customUnits, id: \.self) { unit in
                            Text(unit).tag(unit)
                        }
                    }
                    .pickerStyle(.menu)
                    Picker("Initial Out Unit:", selection: $outUnit) {
                        ForEach(customUnits, id: \.self) { unit in
                            Text(unit).tag(unit)
                        }
                    }
                    .pickerStyle(.menu)
                } else {
                    Picker("Initial In Unit:", selection: $inUnit) {
                        ForEach(units, id: \.self) { unit in
                            Text(unit).tag(unit)
                        }
                    }
                    .pickerStyle(.menu)
                    Picker("Initial Out Unit:", selection: $outUnit) {
                        ForEach(units, id: \.self) { unit in
                            Text(unit).tag(unit)
                        }
                    }
                    .pickerStyle(.menu)
                }
            } else if unitAmount == "Single" {
                Picker("In Unit:", selection: $inUnit) {
                    ForEach(units, id: \.self) { unit in
                        Text(unit).tag(unit)
                    }
                }
                .pickerStyle(.menu)
                Picker("Out Unit:", selection: $outUnit) {
                    ForEach(units, id: \.self) { unit in
                        Text(unit).tag(unit)
                    }
                }
                .pickerStyle(.menu)
            }
        }
        .navigationTitle("Add A Tile")
        .navigationBarItems(trailing: Button(action: {
//            if customSelection == true {
//                converter.append(Converter(name: group, units: customUnits, inUnit: initInUnit, outUnit: initOutUnit))
//            } else {
//                converter.append(Converter(name: group, units: units, inUnit: initInUnit, outUnit: initOutUnit))
//            }
            presentationMode.wrappedValue.dismiss()
        }){
            Text("Save")
        })
    }
}

struct MultipleSelectionList: View {
    @State var units: [String] = []
    @Binding var customUnits: [String]
    var body: some View {
        List {
            ForEach(self.units, id: \.self) { item in
                MultipleSelectionRow(title: item, isSelected: self.customUnits.contains(item)) {
                    if self.customUnits.contains(item) {
                        self.customUnits.removeAll(where: { $0 == item })
                    }
                    else {
                        self.customUnits.append(item)
                    }
                }
            }
        }
    }
}

struct MultipleSelectionRow: View {
    var title: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: self.action) {
            HStack {
                Text(self.title)
                if self.isSelected {
                    Spacer()
                    Image(systemName: "checkmark")
                }
            }
        }
    }
}
