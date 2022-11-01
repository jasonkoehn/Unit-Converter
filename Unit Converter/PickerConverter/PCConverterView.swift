//
//  PCConverterView.swift
//  Unit Converter
//
//  Created by Jason Koehn on 10/31/22.
//

import SwiftUI
/*
struct PCConverterView: View {
    @State var daySelection = 0
    @State var hourSelection = 0
    @State var minuteSelection = 0
    
    var days = [Int](0..<30)
    var hours = [Int](0..<24)
    var minutes = [Int](0..<60)
    
    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: 0) {
                Picker(selection: self.$daySelection, label: Text("")) {
                    ForEach(0 ..< self.days.count) { index in
                        Text("\(self.days[index]) d").tag(index)
                    }
                }
                .pickerStyle(.wheel)
                .frame(width: geometry.size.width/4, height: geometry.size.height, alignment: .center)
                .compositingGroup()
                .clipped()
                Picker(selection: self.$hourSelection, label: Text("")) {
                    ForEach(0 ..< self.hours.count) { index in
                        Text("\(self.hours[index]) h").tag(index)
                    }
                }
                .pickerStyle(.wheel)
                .frame(width: geometry.size.width/3, height: geometry.size.height, alignment: .center)
                .compositingGroup()
                .clipped()
                Picker(selection: self.$minuteSelection, label: Text("")) {
                    ForEach(0 ..< self.minutes.count) { index in
                        Text("\(self.minutes[index]) m").tag(index)
                    }
                }
                .pickerStyle(.wheel)
                .frame(width: geometry.size.width/3, height: geometry.size.height, alignment: .center)
                .compositingGroup()
                .clipped()
            }
        }
    }
}

struct PCConverterView_Previews: PreviewProvider {
    static var previews: some View {
        PCConverterView()
    }
}
*/
