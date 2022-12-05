//
//  Unit_ConverterApp.swift
//  Unit Converter
//
//  Created by Jason Koehn on 9/21/22.
//

import SwiftUI

@main
struct Unit_ConverterApp: App {
//    init() {
//        let manager = FileManager.default
//        guard let managerUrl = manager.urls(for: .documentDirectory, in: .userDomainMask).first else {return}
//        let encoder = PropertyListEncoder()
//        let convertersUrl = managerUrl.appendingPathComponent("converters.plist")
//        manager.createFile(atPath: convertersUrl.path, contents: nil, attributes: nil)
//        let encodedData = try! encoder.encode(initConverters)
//        try! encodedData.write(to: convertersUrl)
//    }
//    @Environment(\.scenePhase) private var scenePhase
    var body: some Scene {
        WindowGroup {
            TilesPageView()
        }
//        .onChange(of: scenePhase) { phase in
//            if phase == .background {
//                print("background")
//            }
//        }
    }
}
