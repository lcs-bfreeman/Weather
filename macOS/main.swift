//
//  main.swift
//  Weather
//
//  Created by Russell Gordon on 2021-09-30.
//

import Foundation

// Generate a weather prediction
var predictionWeather = WeatherViewModel()
while true {
    let prediction = predictionWeather.providePrediction()
    print("Current conditions are \(prediction.condition.description.lowercased()) with a temperature of \(String(format: "%.1f", arguments: [prediction.temperature])) °C.")
    
    print("That's \(prediction.feel.lowercased())!")

    break
}
// Show the prediction
