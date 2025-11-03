//
//  RectangleChartCustomView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 30/10/25.
//

import SwiftUI
import Charts

struct RectangleChartView: View {
    let catData = PetData.catExample
  
    var body: some View {
        VStack{
            Text("Rectangle Chart")
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .font(.title)
            Chart {
                ForEach(catData) { dataPoint in
                    RectangleMark(x: .value("Year", dataPoint.year),
                                  y: .value("Population", dataPoint.population),
                                  width: .fixed(30),
                                  height: .fixed(2))
                }
            }
            .chartXScale(domain: 1998...2025)
            .aspectRatio(1, contentMode: .fit)
            .padding()
        }
        .padding()
    }
}

#Preview {
    RectangleChartView()
}
