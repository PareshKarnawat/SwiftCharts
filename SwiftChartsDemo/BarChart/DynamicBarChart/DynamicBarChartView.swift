//
//  DynamicBarChartView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 30/10/25.
//

import SwiftUI
import Charts

struct DynamicBarChartView: View {
    var averageCount : Double {
        let total = viewMonths.reduce(0) { $0 + $1.viewCount }
        return Double(total) / Double(viewMonths.count)
    }
    @State private var isAverageShown = false
    
    var body: some View {
        VStack {
            Text("Dynamic Bar Chart")
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .font(.title)
            Chart{
                ForEach(viewMonths){ viewMonth in
                    BarMark(
                        x: .value("Months", viewMonth.date, unit: .month) ,
                        y: .value("View Count", viewMonth.viewCount)
                    )
                    .foregroundStyle(by: .value("Months", viewMonth.date.formatted(.dateTime.month())))
                    .cornerRadius(10)
                }
                
                if isAverageShown {
                    RuleMark(y: .value("Average", averageCount))
                        .foregroundStyle(.black)
                        .lineStyle(StrokeStyle(lineWidth: 2, dash: [5, 5]))
                        .annotation(position: .top,
                                    alignment: .bottomLeading) {
                            Text("\(averageCount, format: .number.precision(.fractionLength(2)))")
                                .foregroundColor(.black)
                        }
                }
            }
            .frame(height: 250)
            Toggle(isAverageShown ? "Show Average" : "Hide Average", isOn: $isAverageShown.animation())
        }
        .padding()
    }
}

#Preview {
    DynamicBarChartView()
}
