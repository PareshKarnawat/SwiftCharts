//
//  SwiftChartList.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 30/10/25.
//

import SwiftUI

struct SwiftChartList: View {
    
    var body: some View {
        NavigationStack {
            List(chartsData) { chart in
                NavigationLink {
                    chartView(for: chart.type)
                } label: {
                    Label(chart.name, systemImage: chart.icon)
                        .fontWeight(.medium)
                        .fontDesign(.rounded)
                        .font(.title3)
                        .padding()
                }
            }
            .navigationTitle("Swift Charts")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

@ViewBuilder
func chartView(for type: ChartType) -> some View {
    switch type {
    case .bar: BarChartMainView()
    case .line: LineChartView()
    case .area: AreaChartMainView()
    case .point: PointChartView()
    case .heatmap: RectangleChartMainView()
    case .pie: PieChartMainView()
    case .rule: RuleMarkChartMainView()
    case .lineAreaPoint: LineAreaPointsChartView()
    case .chart3D: ThreeDChartsMainView()
    }
}

#Preview {
    SwiftChartList()
}
