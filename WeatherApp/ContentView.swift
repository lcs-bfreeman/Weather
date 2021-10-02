//
//  ContentView.swift
//  WeatherApp
//
//  Created by Ben Freeman on 2021-09-30.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = WeatherViewModel()

    @State private var output = ""
    
    @State var feeling: String = ""
    @State var weatherConditons: String = ""
    @State var temperatures: Double = 0.0

    

    
    var body: some View {
        
        VStack {
            Button(action: {
                let newPrediction = viewModel.providePrediction()
                feeling = newPrediction.feel
                weatherConditons = newPrediction.condition.description
                temperatures = newPrediction.temperature
                
                output = "Current conditions are \(weatherConditons) with a temperature of \(temperatures) That's \(feeling) °C."
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
