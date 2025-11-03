//
//  MedianRuleMarkView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 01/11/25.
//

import SwiftUI
import Charts

struct MedianRuleMarkView: View {
    let median = salesSample.map { $0.value }.sorted()[salesSample.count/2]
    
    var body: some View {
        VStack{
            Text("Median RuleMark")
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .font(.title)
            
            Chart(salesSample) { item in
                AreaMark(x: .value("Day", item.day), y: .value("Value", item.value))
                    .foregroundStyle(.gray.opacity(0.3))
                RuleMark(y: .value("Median", median))
                    .foregroundStyle(.teal)
            }
            .frame(height: 250)
            .padding()
        }
        .padding()
    }
}

#Preview {
    MedianRuleMarkView()
}
