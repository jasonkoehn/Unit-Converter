//
//  EditView.swift
//  Unit Converter
//
//  Created by Jason Koehn on 11/4/22.
//

import SwiftUI

struct EditView: View {
    @State private var users = ["Paul", "Taylor", "Adele"]
    var body: some View {
        NavigationView {
            List {
                ForEach(users, id: \.self) { user in
                    Text(user)
                }
                .onMove(perform: move)
            }
            .toolbar {
                EditButton()
            }
        }
    }
    
    func move(from source: IndexSet, to destination: Int) {
        users.move(fromOffsets: source, toOffset: destination)
    }
}

struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView()
    }
}
