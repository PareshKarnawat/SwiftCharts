//
//  GradientAreaChartView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 01/11/25.
//

import SwiftUI
import Charts

struct GradientAreaChartView: View {
    var body: some View {
        VStack {
            Text("Gradient Area Chart")
                    .fontWeight(.bold)
                    .fontDesign(.rounded)
                    .font(.title)
            
            Chart(salesDataAreaChart) {
                AreaMark(
                    x: .value("Day", $0.day),
                    y: .value("Value", $0.value)
                )
                .foregroundStyle(
                    LinearGradient(
                        colors: [.purple.opacity(0.2), .purple.opacity(0.9)],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
            }
            .frame(height: 250)
            .padding()
            
        }
    }
}

#Preview {
    GradientAreaChartView()
}
