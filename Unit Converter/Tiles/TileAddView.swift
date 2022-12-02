//
//  TileAddView.swift
//  Unit Converter
//
//  Created by Jason Koehn on 11/26/22.
//

import SwiftUI

struct TileAddView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var name = "Acceleration"
    @State var units: [String] = []
    @State var initInUnit = ""
    @State var initOutUnit = ""
    @Binding var converter: [Converter]
    @State var customSelection: Bool = false
    @State var customUnits: [String] = []
    var body: some View {
        Form {
            Picker("Group:", selection: $name) {
                ForEach(initConverters, id: \.name) { converter in
                    Text(converter.name).tag(converter.name)
                        .task {
                            units = converter.units
                        }
                }
            }
            .pickerStyle(.navigationLink)
            Toggle("Custom Units?", isOn: $customSelection)
            if customSelection == true {
                NavigationLink("Select Units:", destination: MultipleSelectionList(units: units, customUnits: $customUnits))
            }
        }
        .navigationTitle("Add A Tile")
        .navigationBarItems(trailing: Button(action: {
            if customSelection == true {
                converter.append(Converter(name: name, units: customUnits, inUnit: initInUnit, outUnit: initOutUnit))
            } else {
                converter.append(Converter(name: name, units: units, inUnit: initInUnit, outUnit: initOutUnit))
            }
            presentationMode.wrappedValue.dismiss()
        }){
            Text("Done")
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
