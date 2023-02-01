//
//  ContentView.swift
//  ChallengeDaySwiftUI
//
//  Created by Dylan Martin on 1/9/23.
//

import SwiftUI

struct ContentView: View {
    @State private var time = ""
    @State private var selectedUnit = 0
    private let units = ["minutes", "hours", "days"]

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Enter seconds")) {
                    TextField("Time", text: $time)
                        .keyboardType(.decimalPad)
                }

                Section(header: Text("Convert to")) {
                    Picker("Unit", selection: $selectedUnit) {
                        ForEach(0 ..< units.count) {
                            Text(self.units[$0])
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }

                Section(header: Text("Result")) {
                    Text("\(convertedTime)")
                }
            }
            .navigationBarTitle("Time Converter")
        }
    }

    private var convertedTime: String {
        let timeValue = Double(time) ?? 0
        let unit = units[selectedUnit]
        switch unit {
        case "days":
            return "\(timeValue / 86400) days"
        case "minutes":
            return "\(timeValue / 60) minutes"
        case "hours":
            return "\(timeValue / 3600) hours"
        default:
            return "Invalid unit"
        }
    }
}
