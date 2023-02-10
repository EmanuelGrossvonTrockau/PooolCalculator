//
//  ResultView.swift
//  PoolCalculator
//
//  Created by Emanuel Gross von Trockau on 2023-02-09.
//

import SwiftUI

struct ResultView: View {
    let priorResult: Result
    var body: some View {
        HStack {
            
            VStack(alignment: .leading, spacing: 3) {
                
                Text("Area")

                Text("Watercost")

                // Divider
                Text("")
                
                Text("Total water Cost")
                
                Text("")
                
                Text("Area")
                
                Text("Liter ")
                // Divider
                Text("")

                Text("total water needed ")

                // Divider
                Text("")
            }
            .font(Font.custom("Courier New",
                              size: 14.0,
                              relativeTo: .body))
            
            
            .bold()

            Spacer()
            
            VStack(alignment: .trailing, spacing: 1) {
                
                Text("\(priorResult.area)m3")
                
                Text("x \(priorResult.totalcost)")
                
                Text("=============")
                
              
                
                Text(" $\(priorResult.totalcost)")
                
                Text("")
                
                Text("\(priorResult.area)m3")
                
                Text("x 1000")
                
                Text("============")
                
                Text("\(priorResult.waterNeeded)L")
            }
            .font(Font.custom("Courier New",
                              size: 14,
                              relativeTo: .body))
            

        }
        .padding(.horizontal)
        
    }
}

    


struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(priorResult: ResultForPreview)
    }
}
