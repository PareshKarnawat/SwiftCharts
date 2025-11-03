//
//  MultipleVerticalRuleMarkView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 01/11/25.
//

import SwiftUI
import Charts

struct MultipleVerticalRuleMarkView: View {
    var body: some View {
        VStack{
            Text("Mutiple Vertical RuleMark")
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .font(.title)
            
            Chart(salesSample) { item in
                BarMark(x: .value("Day", item.day), y: .value("Value", item.value))
                    .foregroundStyle(by: .value("Day", item.day))
                
                ForEach(["Mon","Wed","Fri"], id: \.self) { d in
                    RuleMark(x: .value("Day", d))
                        .foregroundStyle(.brown.opacity(0.7))
                }
            }
            .chartLegend(alignment: .center, spacing: 20)
            .frame(height: 250)
            .padding()
        }
        .padding()
    }
}

#Preview {
    MultipleVerticalRuleMarkView()
}
