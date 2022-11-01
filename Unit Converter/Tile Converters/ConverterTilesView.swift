//
//  ConverterTilesView.swift
//  Unit Converter
//
//  Created by Jason Koehn on 10/31/22.
//

import SwiftUI

struct ConverterTilesView: View {
    @State var showSettingsView = false
    @FocusState var isInputActive: Bool
    var columns = [GridItem(.adaptive(minimum: 335))]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(converters, id: \.name) { converter in
                        TileView(name: converter.name, units: converter.units, inUnit: converter.inUnit, outUnit: converter.outUnit, isInputActive: _isInputActive)
                    }
                }
                .padding(.horizontal, 7)
            }
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
                    .font(.system(size: 16))
            })
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .sheet(isPresented: $showSettingsView) {
            NavigationView {
                SettingsView()
            }
        }
    }
}

struct ConverterTilesView_Previews: PreviewProvider {
    static var previews: some View {
        ConverterTilesView()
    }
}
