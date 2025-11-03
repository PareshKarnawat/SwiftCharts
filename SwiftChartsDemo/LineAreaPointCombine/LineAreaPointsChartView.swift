//
//  LineAreaPointsChartView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 31/10/25.
//

import SwiftUI
import Charts


enum ChartMode: String, CaseIterable, Identifiable {
    case line = "Line"
    case area = "Area"
    case lineArea = "Line + Area"
    
    var id: Self { self }
}

struct LineAreaPointsChartView: View {
    
    let store1Data = SalesData.store1Sales
    let store2Data = SalesData.store2Sales
    
    @State private var selectedMode = ChartMode.line
    @State private var showDots: Bool = true
    @State private var showCurve: Bool = false
    @State private var showLabels: Bool = false
    @State private var showMultiLine: Bool = false
    
    var body: some View {
        VStack {
            
            Picker(selection: $selectedMode.animation()) {
                ForEach(ChartMode.allCases) { mode in
                    Text(mode.rawValue)
                }
            } label: {
                Text("Line Charts")
            }
            .pickerStyle(.segmented)
            .padding()
            
            
            Chart {
                if showMultiLine {
                    ForEach([("Store1", store1Data), ("Store2", store2Data)], id: \.0) { entry in
                        let type = entry.0
                        let series = entry.1
                        
                        if selectedMode == .area || selectedMode == .lineArea {
                            ForEach(series) { item in
                                AreaMark(
                                    x: .value("Month", item.month),
                                    y: .value("Sales", item.value)
                                )
                                .foregroundStyle(by: .value("Store", type))
                                .opacity(0.25)
                            }
                        }
                        
                        ForEach(series) { item in
                            LineMark(
                                x: .value("Month", item.month),
                                y: .value("Sales", item.value)
                            )
                            .interpolationMethod(showCurve ? .catmullRom : .linear)
                            .foregroundStyle(by: .value("Store", type))
                            .symbol(by: .value("Store", type))
                        }
                        
                        if showDots {
                            ForEach(series) { item in
                                PointMark(
                                    x: .value("Month", item.month),
                                    y: .value("Sales", item.value)
                                )
                                .foregroundStyle(by: .value("Store", type))
                            }
                        }
                        
                        if showLabels {
                            ForEach(series) { item in
                                PointMark(
                                    x: .value("Month", item.month),
                                    y: .value("Sales", item.value)
                                )
                                .annotation(position: .top) {
                                    Text("\(Int(item.value))")
                                        .font(.caption2)
                                }
                            }
                        }
                    }
                    
                } else {
                    ForEach(store1Data) { item in
                        
                        if selectedMode == .area || selectedMode == .lineArea {
                            AreaMark(
                                x: .value("Month", item.month),
                                y: .value("Sales", item.value)
                            )
                            .foregroundStyle(.blue.opacity(0.3))
                        }
                        
                        LineMark(
                            x: .value("Month", item.month),
                            y: .value("Sales", item.value)
                        )
                        .interpolationMethod(showCurve ? .catmullRom : .linear)
                        
                        if showDots {
                            PointMark(
                                x: .value("Month", item.month),
                                y: .value("Sales", item.value)
                            )
                        }
                        
                        if showLabels {
                            PointMark(
                                x: .value("Month", item.month),
                                y: .value("Sales", item.value)
                            )
                            .annotation(position: .top) {
                                Text("\(Int(item.value))")
                                    .font(.caption2)
                            }
                        }
                    }
                }
            }
            .frame(height: 250)
            .padding()
            .animation(.easeInOut, value: selectedMode)
            .animation(.easeInOut, value: showDots)
            .animation(.easeInOut, value: showCurve)
            .animation(.easeInOut, value: showLabels)
            .animation(.easeInOut, value: showMultiLine)
            
            
            Divider()
                .padding(.horizontal)
            
            VStack(alignment: .leading, spacing: 8) {
                Toggle("Show Multi-Line Chart", isOn: $showMultiLine)
                Toggle("Show Dots", isOn: $showDots)
                Toggle("Show Curve", isOn: $showCurve)
                Toggle("Show Labels", isOn: $showLabels)
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .padding(.top)
    }
}


#Preview {
    LineAreaPointsChartView()
}
