//
//  StaticBarChartView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 30/10/25.
//

import SwiftUI
import Charts

struct StaticBarChartView: View {
    @State private var isAverageShown = false
   
    var average: Double {
        let total = staticBardata.reduce(0) { $0 + $1.count }
        return Double(total) / Double(staticBardata.count)
    }
    
    var body: some View {
        VStack{
            Text("Static Bar Chart")
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .font(.title)
            
            Chart{
                BarMark(
                    x: .value("Shape Type", staticBardata[0].type) ,
                    y: .value("Total Count", staticBardata[0].count)
                )
                
                .opacity(0.5)
                
                BarMark(
                    x: .value("Shape Type", staticBardata[1].type) ,
                    y: .value("Total Count", staticBardata[1].count)
                )
                .opacity(0.8)
                
                BarMark(
                    x: .value("Shape Type", staticBardata[2].type) ,
                    y: .value("Total Count", staticBardata[2].count)
                )
               
                if isAverageShown {
                    RuleMark(y: .value("Average", average))
                        .foregroundStyle(.gray)
                        .lineStyle(StrokeStyle(lineWidth: 2, dash: [5, 5]))
                        .annotation(position: .top,
                                    alignment: .bottomLeading) {
                            Text("Average \(average, format: .number.precision(.fractionLength(2)))")
                                .foregroundColor(.gray)
                        }
                }
            }
            .frame(height: 250)
            Toggle(isAverageShown ? "Show Average" : "Hide Average", isOn: $isAverageShown.animation())
        }
        .padding()
    }
}

#Preview {
    StaticBarChartView()
}
