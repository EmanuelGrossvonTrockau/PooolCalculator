//
//  ContentView.swift
//  PoolCalculator
//
//  Created by Emanuel Gross von Trockau on 2023-02-08.
//

import SwiftUI

struct ContentView: View {
    //MARK: Stored Properties
    @State  var length: String = ""
    @State  var width: String = ""
    @State  var height: String = ""
    @State  var waterCost: String = ""
    @State  var area: Double = 0.0
    @State  var totalCost: Double = 0.0
    
    
    
    
    var body: some View {
        List {
            Text("T")
        }
        
        .navigationTitle("Pool Calculator")
            }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
    }
}
