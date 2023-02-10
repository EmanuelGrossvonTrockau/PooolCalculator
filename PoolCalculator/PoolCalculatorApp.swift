//
//  PoolCalculatorApp.swift
//  PoolCalculator
//
//  Created by Emanuel Gross von Trockau on 2023-02-08.
//

import SwiftUI

@main
struct PoolCalculatorApp: App {
    @State var history: [Result] = []
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView( history: $history)
                    .tabItem {
                        Image(systemName: "rectangle.split.2x2.fill")
                        Text("Calculate")
                    }
                 HistoryView(history: $history)
                    .tabItem {
                        Image(systemName: "Clock.fill")
                        Text("History")
                    }
                
                
                
            }
            
        }
    }
}
