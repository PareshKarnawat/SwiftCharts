//
//  BasicAreaChartView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 31/10/25.
//

import SwiftUI
import Charts

struct BasicAreaChartView: View {
    var body: some View {
        VStack {
            Text("Basic Area Chart")
                    .fontWeight(.bold)
                    .fontDesign(.rounded)
                    .font(.title)
            
            Chart(salesDataAreaChart) {
                AreaMark(
                    x: .value("Day", $0.day),
                    y: .value("Value", $0.value)
                )
                .foregroundStyle(.indigo.opacity(0.5))
            }
            .frame(height: 250)
        }
        .padding()
    }
}

#Preview {
    BasicAreaChartView()
}
