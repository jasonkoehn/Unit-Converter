//
//  TileAddView.swift
//  Unit Converter
//
//  Created by Jason Koehn on 11/26/22.
//

import SwiftUI

struct TileAddView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var name = ""
    @State var units: [String] = []
    @State var initInUnit = ""
    @State var initOutUnit = ""
    @Binding var converter: [Converter]
    var body: some View {
        VStack {
            HStack {
                Text("Group:")
                Picker("Name", selection: $name) {
                    ForEach(initConverters, id: \.name) { converter in
                        Text(converter.name).tag(converter.name)
                            .task {
                                units = converter.units
                            }
                    }
                }
                .pickerStyle(.menu)
            }
            Text("Choose Defaults:")
            HStack {
                Picker("Unit", selection: $initInUnit) {
                    ForEach(units, id: \.self) { unit in
                        Text(unit).tag(unit)
                    }
                }
                .pickerStyle(.menu)
                
                Picker("Unit", selection: $initOutUnit) {
                    ForEach(units, id: \.self) { unit in
                        Text(unit).tag(unit)
                    }
                }
                .pickerStyle(.menu)
            }
            .background(Color(.systemGray5))
            .cornerRadius(12)
            Spacer()
        }
        .navigationTitle("Add A Tile")
        .navigationBarItems(trailing: Button(action: {
            converter.append(Converter(name: name, units: units, inUnit: initInUnit, outUnit: initOutUnit))
            presentationMode.wrappedValue.dismiss()
        }){
            Text("Done")
        })
    }
}

//struct TileAddView_Previews: PreviewProvider {
//    static var previews: some View {
//        TileAddView(converter: initConverters)
//    }
//}
