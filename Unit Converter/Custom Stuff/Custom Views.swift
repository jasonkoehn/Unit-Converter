//
//  Custom Views.swift
//  Unit Converter
//
//  Created by Jason Koehn on 11/4/22.
//

import SwiftUI

struct Custom_Views: View {
    var body: some View {
        VStack {
            Image(systemName: "chevron.up")
                .font(.system(size: 12))
            Image(systemName: "chevron.down")
                .font(.system(size: 12))
        }
    }
}

struct Custom_Views_Previews: PreviewProvider {
    static var previews: some View {
        Custom_Views()
    }
}
