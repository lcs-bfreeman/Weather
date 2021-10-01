//
//  WeatherAppApp.swift
//  WeatherApp
//
//  Created by Ben Freeman on 2021-09-30.
//

import SwiftUI

@main
struct WeatherAppApp: App {
    
    @StateObject private var predictionWeather = WeatherViewModel()
        
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
