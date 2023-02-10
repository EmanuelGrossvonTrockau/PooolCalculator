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

    
    @Binding var history: [Result]
    var lengthAsDouble: Double? {
        guard let unrappedlength = Double(length) else {
            return nil
        }
        return unrappedlength
    }
    
    var widthASDouble: Double? {
        guard let unrappedwidth = Double(width) else {
            return nil
        }
        return unrappedwidth
    }
        
    var heightAsDouble: Double? {
        guard let unrappedheight = Double(height) else {
            return nil
        }
        return unrappedheight
    }
    var watercostAsDouble: Double? {
        guard let unrappedwatercost = Double(waterCost) else {
            return nil
        }
        return unrappedwatercost
    }
        
        
    
    var result: (area: String, waterNeeded: String, totalcost: String) {
        guard let lenght = lengthAsDouble, let width = widthASDouble, let height = heightAsDouble, let waterCost = watercostAsDouble else {
            return ("","","")
        }
        let area = (lenght * width * height)
        let waterNeeded = area * 1000
        let totalcost = (waterCost) * area
        return ("\(area.formatted(.number.precision(.fractionLength(2))))",
                "\(waterNeeded.formatted(.number.rounded(rule: .up, increment: 1)))",
                "\(waterCost.formatted(.number.precision(.fractionLength(2))))")
    }
    
    var body: some View {
        
        Form {
            
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
            
            Section(header: Text("watercost")) {
                HStack {
                    Text("Cost per cubic meter")
                    TextField("Enter water cost", text: $waterCost)
                }
            }
            Section(header: Text("Result")) {
                HStack{
                    Text("Area: \(result.area)m3")
                    }
                HStack{
                    Text("Total cost: $\(result.totalcost)")
                }
                HStack{
                    Text("Water needed: \(result.waterNeeded)L")
                    
                }
                
            }
            
            HStack{
                
                Button(action: {
                    let priorResult = Result(area: result.area, waterNeeded: result.waterNeeded, totalcost: result.totalcost)
                    history.append(priorResult)
                }, label: {
                    Text("Save")
                        .font(.headline.uppercaseSmallCaps())
                })
                .buttonStyle(.bordered)
            }
            
            
            
            
            
            
        }
        .navigationTitle("Pool Calculator")
       
        
       
        
        
            }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView( history: Binding.constant([]))
        }
    }
}
