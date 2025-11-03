//
//  DonutPieChartView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 31/10/25.
//

import SwiftUI
import Charts

struct DonutPieChartView: View {
    var mostExpensiveCategory: ExpenseItem? {
        expenses.max(by: { $0.amount < $1.amount })
    }
    
    var body: some View {
        VStack {
            Text("Donut Pie Chart")
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .font(.title)
            Chart(expenses) { expense in
                SectorMark(
                    angle: .value("Value", expense.amount),
                    innerRadius: .ratio(0.6)
                )
                .foregroundStyle(by: .value("Category", expense.category))
            }
            .frame(height: 300)
            .chartLegend(alignment: .center, spacing: 20)
            .chartBackground { chartProxy in
                GeometryReader { geometry in
                    let frame = geometry[chartProxy.plotFrame!]
                    if let expensive = mostExpensiveCategory {
                        VStack {
                            Text("Expensive Category")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                            
                            Text(expensive.category)
                                .font(.title2.bold())
                                .foregroundColor(.primary)
                            
                            Text(expensive.amount.formatted() + " spent")
                                .font(.callout)
                                .foregroundStyle(.secondary)
                        }
                        .position(x: frame.midX, y: frame.midY)
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    DonutPieChartView()
}
