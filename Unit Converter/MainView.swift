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
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ConvertersView(name: "Mass", units: UnitMassValues, inUnit: UnitMass.kilograms, outUnit: UnitMass.kilograms, isInputActive: _isInputActive)
                    ConvertersView(name: "Length", units: UnitLengthValues, inUnit: UnitLength.meters, outUnit: UnitLength.meters, isInputActive: _isInputActive)
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
            .navigationBarItems(trailing: Button(action: {
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


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
