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
                    ForEach(converters, id: \.name) { converter in
                        ConvertersView(name: converter.name, units: converter.units, isInputActive: _isInputActive)
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
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
