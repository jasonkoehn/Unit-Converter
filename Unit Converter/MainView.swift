//
//  MainView.swift
//  Unit Converter
//
//  Created by Jason Koehn on 9/21/22.
//

import SwiftUI

struct MainView: View {
    @State var showSettingsView = false
    @FocusState var isInputActive: Bool
    @State private var orientation = "Portrait"
    let columns = [GridItem(),GridItem()]
    var body: some View {
        NavigationView {
            ScrollView {
                if orientation == "Portrait" {
                    VStack {
                        ForEach(converters, id: \.name) { converter in
                            ConvertersView(name: converter.name, units: converter.units, inUnit: converter.inUnit, outUnit: converter.outUnit, isInputActive: _isInputActive)
                        }
                    }
                } else if orientation == "Landscape" {
                    LazyVGrid(columns: columns, spacing: 7) {
                        ForEach(converters, id: \.name) { converter in
                            ConvertersView(name: converter.name, units: converter.units, inUnit: converter.inUnit, outUnit: converter.outUnit, isInputActive: _isInputActive)
                        }
                    }
                }
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
        .onRotate { newOrientation in
            let lastOrientation = orientation
            if newOrientation.isPortrait {
                orientation = "Portrait"
            } else if newOrientation.isLandscape {
                orientation = "Landscape"
            } else if newOrientation.isFlat {
                if lastOrientation == "Portrait" {
                    orientation = "Portrait"
                } else if lastOrientation == "Landscape" {
                    orientation = "Landscape"
                }
            }
        }
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
