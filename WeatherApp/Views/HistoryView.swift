//
//  HistoryView.swift
//  WeatherApp
//
//  Created by Ben Freeman on 2021-10-03.
//

import SwiftUI

struct HistoryView: View {
    
    @ObservedObject var viewModel: WeatherViewModel = WeatherViewModel()
    
    
    var body: some View {
        List(viewModel.predictions.reversed()) { prediction in
            VStack(alignment: .leading) {
                Text(prediction.feel)
                    .bold()
                Text("\(String(format: "%.1f", arguments: [prediction.temperature])) °C.")
                Text("\(prediction.feel)")
                Text("\(prediction.condition.description.lowercased())")
            }
        }
        .padding()
        .navigationTitle("History")

    }
}

//struct HistoryView_Previews: PreviewProvider {
//    static var previews: some View {
//        HistoryView()
//    }
//}
