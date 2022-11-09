//
//  TabView.swift
//  Unit Converter
//
//  Created by Jason Koehn on 11/4/22.
//

import SwiftUI

struct TabsView: View {
    var body: some View {
        TabView {
            ConverterTilesView()
            PCConverterView()
        }
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
