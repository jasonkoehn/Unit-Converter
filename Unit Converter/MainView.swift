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
    var columns = [GridItem(.adaptive(minimum: 335))]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    Group {
                        ConvertersView(name: "Acceleration", units: AccelerationValues, isInputActive: _isInputActive)
                        ConvertersView(name: "Angle", units: AngleValues, isInputActive: _isInputActive)
                        ConvertersView(name: "Area", units: AreaValues, isInputActive: _isInputActive)
                        ConvertersView(name: "Concentration Mass", units: ConcentrationMassValues, isInputActive: _isInputActive)
                        ConvertersView(name: "Duration", units: DurationValues, isInputActive: _isInputActive)
                        ConvertersView(name: "Electric Charge", units: ElectricChargeValues, isInputActive: _isInputActive)
                        ConvertersView(name: "Electric Current", units: ElectricCurrentValues, isInputActive: _isInputActive)
                        ConvertersView(name: "Electric Potential Difference", units: ElectricPotentialDifferenceValues, isInputActive: _isInputActive)
                        ConvertersView(name: "Electric Resistance", units: ElectricResistanceValues, isInputActive: _isInputActive)
                        ConvertersView(name: "Energy", units: EnergyValues, isInputActive: _isInputActive)
                    }
                    Group {
                        ConvertersView(name: "Frequency", units: FrequencyValues, isInputActive: _isInputActive)
                        ConvertersView(name: "Fuel Efficiency", units: FuelEfficiencyValues, isInputActive: _isInputActive)
                        ConvertersView(name: "Length", units: LengthValues, isInputActive: _isInputActive)
                        ConvertersView(name: "Mass", units: MassValues, isInputActive: _isInputActive)
                        ConvertersView(name: "Power", units: PowerValues, isInputActive: _isInputActive)
                        ConvertersView(name: "Pressure", units: PressureValues, isInputActive: _isInputActive)
                        ConvertersView(name: "Speed", units: SpeedValues, isInputActive: _isInputActive)
                        ConvertersView(name: "Temperature", units: TemperatureValues, isInputActive: _isInputActive)
                        ConvertersView(name: "Volume", units: VolumeValues, isInputActive: _isInputActive)
                    }

//                    ForEach(converters, id: \.name) { converter in
//                        ConvertersView(name: converter.name, units: converter.units, isInputActive: _isInputActive)
//                    }
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


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
