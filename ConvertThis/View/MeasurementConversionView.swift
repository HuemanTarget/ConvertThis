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
  
  let measurements = ["feet", "meters", "yards", "kilometers", "meters"]
  
  // MARK: - BODY
  var body: some View {
    Text("Mesurement Conversion")
      .padding()
  }
}

// MARK: - PREVIEW
struct MeasurementConversionView_Previews: PreviewProvider {
  static var previews: some View {
    MeasurementConversionView()
  }
}
