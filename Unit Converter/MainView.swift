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
    @State var geoWidth = 0.0
    @State var geoHeight = 0.0
    var body: some View {
        ZStack {
            GeometryReader { Geometry in
                Text("")
                    .foregroundColor(.clear)
                    .task {
                        geoWidth = Geometry.size.width
                        geoHeight = Geometry.size.height
                        print(geoWidth)
                        print(geoHeight)
                    }
            }
            NavigationView {
                ScrollView {
                    VStack {
                        ForEach(converters, id: \.name) { converter in
                            ConvertersView(name: converter.name, units: converter.units, inUnit: converter.inUnit, outUnit: converter.outUnit, isInputActive: _isInputActive, geoWidth: geoWidth, geoHeight: geoHeight)
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
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
