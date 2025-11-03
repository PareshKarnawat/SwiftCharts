//
//  LineChartView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 31/10/25.
//

import SwiftUI
import Charts

enum LineMode {
    case linear
    case curve
    case step
}

struct LineChartView: View {
    let store1Data = SalesData.store1Sales
    let store2Data = SalesData.store2Sales
    
    @State private var showMultiLine: Bool = false
    @State private var showCurveLine: Bool = false
    @State private var showStepLine: Bool = false
    
    @State private var lineMode: LineMode = .linear

    
    var selectedInterpolationMethod: InterpolationMethod {
        switch lineMode {
            case .linear: return .linear
            case .curve:  return .catmullRom
            case .step:   return .stepCenter
        }
    }
    
    var body: some View {
        VStack {
            Text(showMultiLine ? "Multi Lines Chart" : "Line Chart")
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .font(.title)
            Text("Current line mode: \(String(describing: lineMode).capitalized)")
                .fontWeight(.semibold)
                .fontDesign(.rounded)
                .font(.headline)
            
            chartView
                .frame(height: 250)
                .aspectRatio(1, contentMode: .fit)
                .padding()

            VStack(alignment: .leading, spacing: 8) {
                Toggle("Show Multi-Lines", isOn: $showMultiLine)
                Toggle("Show Curve-Line", isOn: Binding(
                    get: { lineMode == .curve },
                    set: { newValue in
                        lineMode = newValue ? .curve : .linear
                    }
                ))

                Toggle("Show Step-Line", isOn: Binding(
                    get: { lineMode == .step },
                    set: { newValue in
                        lineMode = newValue ? .step : .linear
                    }
                ))
            }
            .padding()
        }
    }
}

private extension LineChartView {
    
    @ViewBuilder
    var chartView: some View {
        if showMultiLine {
            multiLineChart
        } else {
            singleLineChart
        }
    }
    
    var multiLineChart: some View {
        let dataSeries: [(type: String, data: [SalesData])] = [
            ("Store1", store1Data),
            ("Store2", store2Data)
        ]
        
        return Chart {
            ForEach(dataSeries, id: \.type) { series in
                ForEach(series.data) { item in
                    LineMark(
                        x: .value("Month", item.month),
                        y: .value("Sales", item.value)
                    )
                }
                .interpolationMethod(selectedInterpolationMethod)
                .foregroundStyle(by: .value("Sales", series.type))
                .symbol(by: .value("Sales", series.type))
            }
        }
    }
    
    
    var singleLineChart: some View {
        Chart(store1Data) { item in
            LineMark(
                x: .value("Month", item.month),
                y: .value("Sales", item.value)
            )
            .interpolationMethod(selectedInterpolationMethod)
        }
    }
}

#Preview {
    LineChartView()
}

