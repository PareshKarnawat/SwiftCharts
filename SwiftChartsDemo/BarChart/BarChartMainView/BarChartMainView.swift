//
//  BarChartView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 30/10/25.
//

import SwiftUI

enum BarChartTypes: String, CaseIterable, Identifiable {
    case staticBar = "Static"
    case dynamicBar = "Dynamic"
    case horizontal = "Horizontal"
    var id: Self { self }
}

struct BarChartMainView: View {
    @State private var selectedBarChart = BarChartTypes.staticBar
    
    var body: some View {
        VStack(alignment: .leading) {
            Picker(selection: $selectedBarChart.animation()) {
                ForEach(BarChartTypes.allCases) { barChart in
                    Text(barChart.rawValue)
                }
            } label: {
                Text("Bar Charts")
            }
            .pickerStyle(.segmented)
            Spacer()
            Group {
                switch selectedBarChart {
                case .staticBar:
                    StaticBarChartView()
                case .dynamicBar:
                    DynamicBarChartView()
                case .horizontal:
                    HorizontalBarChartView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    BarChartMainView()
}
