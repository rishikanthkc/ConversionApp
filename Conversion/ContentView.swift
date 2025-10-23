//
//  ContentView.swift
//  Conversion
//
//  Created by Rishikanth K C on 23/10/25.
//

import SwiftUI

struct ContentView: View {
    let inputUnit = ["Meters", "Kilometers", "Yards", "Miles"]
    let outputUnit = ["Meters", "Kilometers", "Yards", "Miles"]
    
    @State private var inputValue: Int = 0
    @State private var outputValue: Double = 0.0
    @State private var selectedInput = "Meters"
    @State private var selectedOutput = "Kilometers"
    @FocusState private var textFieldIsFocused: Bool
    
    var result: Double {
        let inputValueDouble = Double(inputValue)
        
        switch (selectedInput, selectedOutput) {
            
        case ("Meters", "Kilometers"):
            return inputValueDouble / 1000.0
        case ("Meters", "Yards"):
            return inputValueDouble * 1.09361
        case ("Meters", "Miles"):
            return inputValueDouble / 1609.344
            
        case ("Kilometers", "Meters"):
            return inputValueDouble * 1000.0
        case ("Kilometers", "Yards"):
            return inputValueDouble * 1093.61
        case ("Kilometers", "Miles"):
            return inputValueDouble / 1.609344
            
        case ("Yards", "Meters"):
            return inputValueDouble / 1.09361
        case ("Yards", "Kilometers"):
            return inputValueDouble / 1093.61
        case ("Yards", "Miles"):
            return inputValueDouble / 1760.0
            
        case ("Miles", "Meters"):
            return inputValueDouble * 1609.344
        case ("Miles", "Kilometers"):
            return inputValueDouble * 1.609344
        case ("Miles", "Yards"):
            return inputValueDouble * 1760.0
            
        default:
            return inputValueDouble
        }
    }
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Enter the value", value: $inputValue, format: .number)
                    .keyboardType(.decimalPad)
                    .focused($textFieldIsFocused)
                
                Section("From") {
                    Picker("Select the unit", selection: $selectedInput) {
                        ForEach(inputUnit, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section("To") {
                    Picker("Select the unit", selection: $selectedOutput) {
                        ForEach(outputUnit, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section {
                    Text(result, format: .number)
                }
            }
            .navigationTitle("Conversion")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar {
                if textFieldIsFocused {
                    Button("Done") {
                        textFieldIsFocused = false
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
