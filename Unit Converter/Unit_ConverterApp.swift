//
//  Unit_ConverterApp.swift
//  Unit Converter
//
//  Created by Jason Koehn on 9/21/22.
//

import SwiftUI

@main
struct Unit_ConverterApp: App {
    @AppStorage("appearance") var appearance: String = "System"
    var body: some Scene {
        WindowGroup {
            TilesPageView()
                .preferredColorScheme(appearance == "System" ? nil : (appearance == "Dark" ? .dark : .light))
        }
    }
}
