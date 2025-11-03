//
//  SegmentedPieChartView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 31/10/25.
//

import SwiftUI
import Charts

struct SegmentedPieChartView: View {
    var body: some View {
        VStack {
            Text("Segmented Pie Chart")
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .font(.title)
            Chart(expenses) { expense in
                SectorMark(
                    angle: .value("Amount", expense.amount),
                    innerRadius: .ratio(0.6),
                    angularInset: 4
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
    SegmentedPieChartView()
}
