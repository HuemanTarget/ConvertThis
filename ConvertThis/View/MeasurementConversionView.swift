//
//  MeasurementConversionView.swift
//  ConvertThis
//
//  Created by Joshua Basche on 2/25/21.
//

import SwiftUI

struct MeasurementConversionView: View {
  // MARK: - PROPERTIES
  @State private var amount = ""
  @State private var initialMeasurement = 0
  @State private var convertedMeasurment = 0
  
  let measurements = ["feet", "meters", "yards", "kilometers", "miles"]
  
  // MARK: - BODY
  var body: some View {
    Form {
      Section(header: Text("Please enter your measurment")) {
        TextField("Amount", text: $amount)
          .keyboardType(.numberPad)
        
        Picker("Measurement", selection: $initialMeasurement) {
          ForEach(0 ..< measurements.count) {
            Text("\(self.measurements[$0])")
          }
        }
        .pickerStyle(SegmentedPickerStyle())
      }
      
      Section(header: Text("Convert to?")) {
        Picker("Measurement", selection: $convertedMeasurment) {
          ForEach(0 ..< measurements.count) {
            Text("\(self.measurements[$0])")
          }
        }
        .pickerStyle(SegmentedPickerStyle())
      }
      
      Section(header: Text("Converted Amount")) {
        Text("\(amount)")
      }
    }
    .padding(.top, 20)
  }
}

// MARK: - PREVIEW
struct MeasurementConversionView_Previews: PreviewProvider {
  static var previews: some View {
    MeasurementConversionView()
  }
}
