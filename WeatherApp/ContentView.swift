//
//  ContentView.swift
//  WeatherApp
//
//  Created by Ben Freeman on 2021-09-30.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var predictionWeather = WeatherViewModel()

    @State private var output = ""
    
    @State var prediction = predictionWeather.providePrediction()
    
    var body: some View {
        
        VStack {
            Button(action: {
                print("Prediction button was pressed")
                output = "Current conditions are \(prediction.condition.description.lowercased()) with a temperature of \(String(format: "%.1f", arguments: [prediction.temperature])) °C."
            }, label: {
                Text("Weather Prediction")
            })
            
            Text("\(output)")
        }
        
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
