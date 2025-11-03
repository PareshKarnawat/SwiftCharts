//
//  VerticalRangeRuleMarkView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 01/11/25.
//

import SwiftUI
import Charts

struct VerticalRangeRuleMarkView: View {
    var body: some View {
        VStack{
            Text("Vertical Range RuleMark")
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .font(.title)
            
            Chart(salesSample) { item in
                BarMark(
                    x: .value("Day", item.day),
                    y: .value("Value", item.value),
                )
                
                RuleMark(
                    x: .value("Start", "Tue")
                )
                .foregroundStyle(.red.opacity(0.25))

                RuleMark(
                    x: .value("End", "Thu")
                )
                .foregroundStyle(.red.opacity(0.25))
            }
            .frame(height: 250)
            .padding()
        }
        .padding()
    }
}

#Preview {
    VerticalRangeRuleMarkView()
}
