//
//  HistoryView.swift
//  PoolCalculator
//
//  Created by Emanuel Gross von Trockau on 2023-02-09.
//

import SwiftUI

struct HistoryView: View {
    @Binding var history: [Result]
    
    var body: some View {
        Text("Hello")
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(history: Binding.constant(historyForPreviw))
    }
}
