//
//  Result.swift
//  PoolCalculator
//
//  Created by Emanuel Gross von Trockau on 2023-02-09.
//

import Foundation

struct Result: Identifiable {
    
    let id = UUID()
    let area: String
    let watercost: String
    let waterNeeded: String
    
    
}
var ResultForPreview = Result(area: "0.00",watercost: "0.00",waterNeeded: "0.00")
