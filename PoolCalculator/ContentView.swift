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
            Section(header: Text("Pool Dimensions")) {
                HStack {
                    Text("Length")
                    TextField("Enter length", text: $length)
                        
                }
                
                HStack {
                    Text("Width")
                    TextField("Enter width", text: $width)
                        
                }
                
                HStack {
                    Text("Height")
                    TextField("Enter height", text: $height)
                        
                }
            }
            
            Section(header: Text("Water Cost")) {
                HStack {
                    Text("Cost per cubic meter")
                    TextField("Enter water cost", text: $waterCost)
                        
                }
            }
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
