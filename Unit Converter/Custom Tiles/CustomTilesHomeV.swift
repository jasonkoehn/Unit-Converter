//
//  CustomTilesHomeView.swift
//  Unit Converter
//
//  Created by Jason Koehn on 11/8/22.
//

import SwiftUI

struct CustomTilesHomeView: View {
    @State var showSettingsView = false
    @State var showEditView = false
    @FocusState var isInputActive: Bool
    var columns = [GridItem(.adaptive(minimum: 335))]
    var body: some View {
        NavigationView {
            ScrollView {
                
            }
            .navigationTitle("Converters")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        isInputActive = false
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        self.showSettingsView.toggle()
                    }){
                        Image(systemName: "gear")
                            .font(.system(size: 16))
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        
                    }){
                        Image(systemName: "plus")
                            .font(.system(size: 16))
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showEditView.toggle()
                    }){
                        if showEditView == true {
                            Text("Done")
                                .font(.system(size: 17))
                        } else {
                            Text("Edit")
                                .font(.system(size: 17))
                        }
                    }
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .sheet(isPresented: $showSettingsView) {
            NavigationView {
                SettingsView()
            }
        }
    }
}

struct CustomTilesHomeView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTilesHomeView()
    }
}
