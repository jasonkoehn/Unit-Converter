//
//  TilesPageView.swift
//  Unit Converter
//
//  Created by Jason Koehn on 11/26/22.
//

import SwiftUI

struct TilesPageView: View {
    @State var showSettingsView = false
    @State var showAddTileView = false
    @FocusState var isInputActive: Bool
    @State var editMode: EditMode = .inactive
    @State var isEditing = false
    @State var converters: [Converter] = []
    var columns = [GridItem(.adaptive(minimum: 335))]
    var body: some View {
        NavigationView {
            ZStack {
                if isEditing == true {
                    List {
                        ForEach(converters, id: \.name) { converter in
                            Text(converter.name)
                                .font(.system(size: 20))
                        }
                        .onMove { indexSet, offset in
                            converters.move(fromOffsets: indexSet, toOffset: offset)
                        }
                        .onDelete { indexSet in
                            converters.remove(atOffsets: indexSet)
                        }
                    }
                    .environment(\.editMode, $editMode)
                    .background(Color.gray)
                } else {
                    ScrollView {
                        LazyVGrid(columns: columns) {
                            ForEach(converters, id: \.name) { converter in
                                TileBoxView(name: converter.name, units: converter.units, inUnit: converter.inUnit, outUnit: converter.outUnit, isInputActive: _isInputActive)
                            }
                        }
                        .padding(.horizontal, 7)
                    }
                }
            }
//            .background(Color.gray)
            .navigationTitle("Converters")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        isInputActive = false
                    }
                }
            }
            .navigationBarItems(leading: Button(action: {
                self.showSettingsView.toggle()
            }){
                Image(systemName: "gear")
//                    .foregroundColor(.orange)
            })
            .navigationBarItems(trailing: Button(action: {
                self.showAddTileView.toggle()
            }){
                Image(systemName: "plus")
//                    .foregroundColor(.orange)
            })
            .navigationBarItems(trailing: Button(action: {
                isEditing.toggle()
                editMode = isEditing ? .active : .inactive
            }){
                if isEditing == true {
                    Text("Done")
                        .font(.system(size: 18))
//                        .foregroundColor(.orange)
                } else {
                    Text("Edit")
                        .font(.system(size: 18))
//                        .foregroundColor(.orange)
                }
            })
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .sheet(isPresented: $showSettingsView) {
            NavigationView {
                SettingsView()
            }
        }
        .sheet(isPresented: $showAddTileView) {
            NavigationView {
                TileAddView(converter: $converters)
            }
        }
        .task {
            //Retrieve Converters
            let manager = FileManager.default
            let decoder = PropertyListDecoder()
            guard let url = manager.urls(for: .documentDirectory, in: .userDomainMask).first else {return}
            let convertersUrl = url.appendingPathComponent("converters.plist")
            if let data = try? Data(contentsOf: convertersUrl) {
                if let response = try? decoder.decode([Converter].self, from: data) {
                    converters = response
                }
            }
        }
    }
}

struct TilesPageView_Previews: PreviewProvider {
    static var previews: some View {
        TilesPageView()
    }
}
