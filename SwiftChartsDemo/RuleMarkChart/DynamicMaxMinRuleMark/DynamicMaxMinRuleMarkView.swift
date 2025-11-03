//
//  DynamicMaxMinRuleMarkView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 01/11/25.
//

import SwiftUI
import Charts

struct DynamicMaxMinRuleMarkView: View {
    let maxItem = salesSample.max { $0.value < $1.value }!
    let minItem = salesSample.min { $0.value < $1.value }!
    
    var body: some View {
        VStack{
            Text("Dynamic Max & Min RuleMark")
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .minimumScaleFactor(0.6)
                .lineLimit(1)
                .font(.title)
            
            Chart(salesSample) { item in
                LineMark(x: .value("Day", item.day), y: .value("Value", item.value))
                RuleMark(y: .value("Peak", maxItem.value))
                    .foregroundStyle(.green)
                RuleMark(y: .value("LowPeak", minItem.value))
                    .foregroundStyle(.green)
            }
            .frame(height: 250)
            .padding()
        }
        .padding()
    }
}

#Preview {
    DynamicMaxMinRuleMarkView()
}
