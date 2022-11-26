//
//  CreateTilesView.swift
//  Unit Converter
//
//  Created by Jason Koehn on 11/23/22.
//

import SwiftUI

struct CreateTilesView: View {
    @State var name = ""
    @State var units: [String] = []
    @State var initInUnit = ""
    @State var initOutUnit = ""
    @State var converter: [TileContents] = []
    var body: some View {
        VStack {
            HStack {
                Text("Group:")
                Picker("Name", selection: $name) {
                    ForEach(converters, id: \.name) { converter in
                        if converter.name == "Choose" {
                            Text(converter.name).tag("")
                                .foregroundColor(Color.gray)
                                .task {
                                    units = converter.units
                                }
                        } else {
                            Text(converter.name).tag(converter.name)
                                .task {
                                    units = converter.units
                                }
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
            Button(action: {
                saveTiles()
            }) {
                Text("Save")
            }
            Button(action: {
                retrieveTiles()
            }) {
                Text("Import")
            }
            ForEach(converter, id: \.name) { converter in
                TileBoxView(name: converter.name, units: converter.units, inUnit: converter.initInUnit, outUnit: converter.initOutUnit)
            }
        }
    }
    func saveTiles() {
        var tile: [TileContents] = converter
        tile.append(TileContents(name: name, units: units, initInUnit: initInUnit, initOutUnit: initOutUnit))
        
        let manager = FileManager.default
        guard let managerUrl = manager.urls(for: .documentDirectory, in: .userDomainMask).first else {return}
        let encoder = PropertyListEncoder()
        let tileUrl = managerUrl.appendingPathComponent("tiles.plist")
        manager.createFile(atPath: tileUrl.path, contents: nil, attributes: nil)
        let encodedData = try! encoder.encode(tile)
        try! encodedData.write(to: tileUrl)

    }
    func retrieveTiles() {
        let manager = FileManager.default
        let decoder = PropertyListDecoder()
        guard let url = manager.urls(for: .documentDirectory, in: .userDomainMask).first else {return}
        let tileUrl = url.appendingPathComponent("tiles.plist")
        if let data = try? Data(contentsOf: tileUrl) {
            if let response = try? decoder.decode([TileContents].self, from: data) {
                converter = response
            }
        }

    }
}

struct CreateTilesView_Previews: PreviewProvider {
    static var previews: some View {
        CreateTilesView()
    }
}

struct TileContents: Codable {
    var name: String
    var units: [String]
    var initInUnit: String
    var initOutUnit: String
}
