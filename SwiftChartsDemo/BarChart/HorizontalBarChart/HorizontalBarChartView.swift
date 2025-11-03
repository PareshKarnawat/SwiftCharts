//
//  HorinontalBarChartView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 30/10/25.
//

import SwiftUI
import Charts

struct HorizontalBarChartView: View {
    var body: some View {
        VStack {
            Text("Horiszontal Bar Chart")
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .font(.title)
            Chart(horizontalBarData) { barData in
                
                BarMark(x: .value("Population", barData.count),
                        y: .value("Type", barData.type))
                .foregroundStyle(by: .value("Type", barData.type))
                .annotation(position: .trailing) {
                    Text(String(barData.count))
                        .foregroundColor(.gray)
                }
            }
            .chartLegend(.hidden)
            .chartXAxis(.hidden)
            .chartYAxis {
                AxisMarks { _ in
                    AxisValueLabel()
                }
            }
            .frame(height: 250)
            .aspectRatio(1, contentMode: .fit)
        }
        .padding()
    }
}

#Preview {
    HorizontalBarChartView()
}
