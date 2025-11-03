//
//  BasicVerticalRuleMarkView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 01/11/25.
//

import SwiftUI
import Charts

struct BasicVerticalRuleMarkView: View {
    var body: some View {
        VStack{
            Text("Basic Vertical RuleMark")
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .font(.title)
            Chart(salesSample) { item in
                BarMark(x: .value("Day", item.day), y: .value("Value", item.value))
                RuleMark(x: .value("Day", "Wed"))
                    .foregroundStyle(.red)
            }
            .frame(height: 250)
            .padding()
        }
        .padding()
    }
}

#Preview {
    BasicVerticalRuleMarkView()
}
