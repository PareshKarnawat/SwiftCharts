//
//  SimplePieChartView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 31/10/25.
//

import SwiftUI
import Charts

struct SimplePieChartView: View {
    var body: some View {
        VStack {
            Text("Simple Pie Chart")
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .font(.title)
            Chart(expenses) { expense in
                SectorMark(
                    angle: .value("Amount", expense.amount),
                    innerRadius: .fixed(0),
                    outerRadius: .ratio(1)
                )
                .foregroundStyle(by: .value("Category", expense.category))
            }
            .chartLegend(alignment: .center, spacing: 20)
            .frame(height: 300)
            .padding()
        }
    }
}

#Preview {
    SimplePieChartView()
}
