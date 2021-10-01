//
//  WeatherViewModel.swift
//  Weather
//
//  Created by Russell Gordon on 2021-09-30.
//

import Foundation
import SwiftUI

class WeatherViewModel: ObservableObject {

    @Published var predictions: [Prediction] = []
    
    func providePrediction() -> Prediction {
        
        let currentPrediction = WeatherPredictionGenerator.getPrediction()
        
        // Adds the current prediction to the arrey
        predictions.append(currentPrediction)
        
        return currentPrediction
    }
    
}

