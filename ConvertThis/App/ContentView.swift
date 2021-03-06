//
//  ContentView.swift
//  ConvertThis
//
//  Created by Joshua Basche on 2/25/21.
//

import SwiftUI

struct ContentView: View {
  // MARK: - PROPERTIES

  // MARK: - BODY
  var body: some View {
    TabView {
      MeasurementConversionView()
        .tabItem {
          Label("Measurements", systemImage: "ruler.fill")
        }
      
      TemperatureConversionView()
        .tabItem {
          Label("Temperature", systemImage: "thermometer")
        }
      
      VolumeConversionView()
        .tabItem {
          Label("Volume", systemImage: "drop.fill")
        }
    }
  }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
