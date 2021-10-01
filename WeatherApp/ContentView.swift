//
//  ContentView.swift
//  WeatherApp
//
//  Created by Ben Freeman on 2021-09-30.
//

import SwiftUI

struct ContentView: View {
    
    @State private var output = ""
    
    let prediction = WeatherPredictionGenerator.getPrediction()
    
    var body: some View {
        
        Button(action: {
            print("Prediction button was pressed")
            output = "Current conditions are \(prediction.condition.description.lowercased()) with a temperature of \(String(format: "%.1f", arguments: [prediction.temperature])) °C."
        }, label: {
            Text("Weather Prediction")
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
