//
//  RectangleChartMainView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 31/10/25.
//

import SwiftUI

struct RectangleChartMainView: View {
    enum RectangleChartTypes: String, CaseIterable, Identifiable {
        case simple = "Simple"
        case heatMap = "HeatMap"
        var id: Self { self }
    }
    
    @State private var selectedRectangleChart = RectangleChartTypes.simple
    
    var body: some View {
        VStack(alignment: .leading) {
            Picker(selection: $selectedRectangleChart.animation()) {
                ForEach(RectangleChartTypes.allCases) { rectangleChart in
                    Text(rectangleChart.rawValue)
                }
            } label: {
                Text("Rectangle Charts")
            }
            .pickerStyle(.segmented)
            
            Spacer()
            
            Group {
                switch selectedRectangleChart {
                case .simple:
                    RectangleChartView()
                case .heatMap:
                    RectangleHeatMapChartView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    RectangleChartMainView()
}
