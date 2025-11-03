//
//  ChartType.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 31/10/25.
//

import Foundation

enum ChartType: CaseIterable, Identifiable {
    var id: Self { self }
    case bar
    case line
    case area
    case point
    case heatmap
    case pie
    case rule
    case lineAreaPoint
}

let chartsData: [ChartData] = [
    ChartData(name: "Bar", icon: "chart.bar", type: .bar),


        ChartData(name: "Line", icon: "chart.line.uptrend.xyaxis", type: .line),
        ChartData(name: "Area", icon: "mountain.2", type: .area),

        ChartData(name: "Point", icon: "chart.dots.scatter", type: .point),
        ChartData(name: "Heatmap", icon: "rectangle.grid.3x2", type: .heatmap),
        ChartData(name: "Pie", icon: "chart.pie", type: .pie),
        ChartData(name: "Rule", icon: "ruler", type: .rule),
        ChartData(name: "Line+Area+Point", icon: "chart.line.text.clipboard", type: .lineAreaPoint)

   ]
