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
            TabView{
                NavigationView {
                    ContentView(viewModel: predictionWeather)
                }
                .tabItem{
                    Image(systemName: "cloud.sun")
                    Text("Weather")
                }
                NavigationView {
                    HistoryView(viewModel: predictionWeather)
                }
                .tabItem{
                    Image(systemName: "clock.fill")
                    Text("History")
        }
    }
}
    }
}
