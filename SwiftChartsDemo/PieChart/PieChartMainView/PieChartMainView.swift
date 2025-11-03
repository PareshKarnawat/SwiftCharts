//
//  PieChartMainView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 31/10/25.
//

import SwiftUI
import Charts

enum PieChartTypes: String, CaseIterable, Identifiable {
    case simplePie = "Simple Pie"
    case donutPie = "Donut Pie"
    case segmentedPie = "Segmented Pie"
    var id: Self { self }
}

struct PieChartMainView: View {
    @State private var selectedPieChart = PieChartTypes.simplePie
    
    var body: some View {
        VStack {
            Picker(selection: $selectedPieChart.animation()) {
                ForEach(PieChartTypes.allCases) { pieChart in
                    Text(pieChart.rawValue)
                }
            } label: {
                Text("Pie Charts")
            }
            .pickerStyle(.segmented)
            .padding()
            
            Spacer()
            
            Group {
                switch selectedPieChart {
                case .simplePie:
                    SimplePieChartView()
                case .donutPie:
                   DonutPieChartView()
                case .segmentedPie:
                    SegmentedPieChartView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .padding()            
            Spacer()
        }
    }
}

#Preview {
    PieChartMainView()
}

