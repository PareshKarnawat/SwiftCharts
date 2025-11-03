//
//  DashedStyleRuleMarkView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 01/11/25.
//

import SwiftUI
import Charts

struct DashedStyleRuleMarkView: View {
    var body: some View {
        VStack{
            Text("Dashed Style RuleMark")
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .font(.title)
            Chart(salesSample) { item in
                LineMark(x: .value("Day", item.day), y: .value("Value", item.value))
                    .foregroundStyle(.red)
                RuleMark(y: .value("Target", 60))
                    .lineStyle(StrokeStyle(lineWidth: 2, dash: [5,5]))
                    .foregroundStyle(.gray)
                    .annotation(position: .top,
                                alignment: .bottomLeading) {
                        Text("Benchmark")
                            .foregroundColor(.gray)
                            .fontWeight(.semibold)
                    }
            }
            .frame(height: 250)
            .padding()
        }
        .padding()
    }
}

#Preview {
    DashedStyleRuleMarkView()
}
