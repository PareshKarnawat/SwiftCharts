//
//  AreChartMainView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 31/10/25.
//

import SwiftUI
import Charts

enum AreChartTypes: String, CaseIterable, Identifiable {
    case basicAreaMark = "Basic"
    case gradientAreaMark = "Gradient"
    case stackedAreaMark = "Stacked"
    case interactiveSelectionArea = "Interactive Selection"
    var id: Self { self }
}

struct AreaChartMainView: View {
    @State private var selectedAreaChart = AreChartTypes.basicAreaMark
    
    var body: some View {
        VStack {
            Picker(selection: $selectedAreaChart.animation()) {
                ForEach(AreChartTypes.allCases) { areaChart in
                    Text(areaChart.rawValue)
                        .tag(areaChart)
                }
            } label: {
                Text("AreaMark Charts")
            }
            .pickerStyle(.segmented)
            .padding()
            
            Group {
                switch selectedAreaChart {
                case .basicAreaMark:
                    BasicAreaChartView()
                case .gradientAreaMark:
                    GradientAreaChartView()
                case .stackedAreaMark:
                    StackedAreaChartView()
                case .interactiveSelectionArea:
                    InteractiveSelectionAreaChartView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        }
    }
}

#Preview {
    AreaChartMainView()
}
