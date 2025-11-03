//
//  PointChartView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 31/10/25.
//

import SwiftUI
import Charts

struct PointChartView: View {
    let data = SalesData.store1Sales
    
    var body: some View {
        VStack {
            Text("Point Chart")
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .font(.title)
            Chart(data) { item in
                PointMark(
                    x: .value("Month", item.month),
                    y: .value("Sales", item.value)
                )
                .symbolSize(80)
            }
            .frame(height: 250)
            .padding()
        }
        .padding()
    }
}

#Preview {
    PointChartView()
}

