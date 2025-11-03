//
//  HorizontalRangeRuleMarkView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 01/11/25.
//

import SwiftUI
import Charts

struct HorizontalRangeRuleMarkView: View {
    var body: some View {
        VStack{
            Text("Horizontal Range RuleMark")
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .font(.title)
            
            Chart(salesSample) { item in
                AreaMark(x: .value("Day", item.day),
                         y: .value("Value", item.value))
                    .foregroundStyle(.gray.opacity(0.3))
                RuleMark(y: .value("Min", 40))
                    .foregroundStyle(.pink)

                RuleMark(y: .value("Max", 60))
                    .foregroundStyle(.pink)
            }
            .frame(height: 250)
            .padding()
        }
        .padding()
    }
}

#Preview {
    HorizontalRangeRuleMarkView()
}
