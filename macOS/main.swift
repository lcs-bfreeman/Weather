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
    print("")
    print("Would you like to see another prediction?")
    print("Y/N")
    let No = readLine()!
    
    if No == "N"{
        print("Would you like to see the history?")
        print("Y/N")
        let Yes = readLine()!
        if Yes == "Y" {
            for weatherp in predictionWeather.predictions {
                print("")
                print("History")
                print("========")
                print(weatherp.condition.description.lowercased())
                print(weatherp.feel)
                print(weatherp.temperature)
                print("")


            }
        }
        
        else{
            
            break
        }
    }
    
    
}
// Show the prediction
