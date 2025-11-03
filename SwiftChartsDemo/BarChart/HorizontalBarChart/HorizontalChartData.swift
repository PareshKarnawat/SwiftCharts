//
//  HorizontalChartData.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 03/11/25.
//

struct HorizontalChartData: Identifiable, Equatable {
    var id: String { return type }
    let type: String
    let count: Int
}

let horizontalBarData = [HorizontalChartData(type: "fish", count: 10),
            HorizontalChartData(type: "reptils", count: 21),
            HorizontalChartData(type: "bird", count: 18),
            HorizontalChartData(type: "dog", count: 40),
            HorizontalChartData(type: "cat", count: 65)]
