//
//  RectangleHeatMapChartView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 31/10/25.
//

import SwiftUI
import Charts

struct RectangleHeatMapChartView: View {
    let heatData: [HeatMapData] = HeatMapData.exampleData
    
    var body: some View {
        VStack{
            Text("Rectangle HeatMap Chart")
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .font(.title)
            Chart(heatData) { data in
                let xStart = data.locationX - 25
                let xEnd   = data.locationX + 25
                let yStart = data.locationY - 25
                let yEnd   = data.locationY + 25
                
                RectangleMark(
                    xStart: .value("start location x", xStart),
                    xEnd: .value("end location x", xEnd),
                    yStart: .value("start location y", yStart),
                    yEnd: .value("end location y", yEnd))
                .foregroundStyle(by: .value("Number", data.temperature))
            }
            .chartXScale(domain: 25...225)
            .chartYScale(domain: 25...225)
            .aspectRatio(1, contentMode: .fit)
            .padding()
        }
        .padding()
    }
}

#Preview {
    RectangleHeatMapChartView()
}
