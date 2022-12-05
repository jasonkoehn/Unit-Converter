//
//  SettingsView.swift
//  Unit Converter
//
//  Created by Jason Koehn on 10/31/22.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("Pro") var isPro = false
    var body: some View {
        Form {
            Toggle("Pro:", isOn: $isPro)
        }
        .navigationTitle("Settings")
        .navigationBarItems(trailing: Button(action: {
            presentationMode.wrappedValue.dismiss()
        }){
            Text("Done")
        })
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
