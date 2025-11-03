//
//  BasicHorizontalRuleMarkView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 01/11/25.
//

import SwiftUI
import Charts

struct BasicHorizontalRuleMarkView: View {
    var body: some View {
        VStack{
            Text("Basic Horizontal RuleMark")
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .font(.title)
            Chart(salesSample) { item in
                LineMark(x: .value("Day", item.day), y: .value("Value", item.value))
                RuleMark(y: .value("Value", 60))
                    .foregroundStyle(.purple)
            }
            .frame(height: 250)
            .padding()
        }
        .padding()
    }
}

#Preview {
    BasicHorizontalRuleMarkView()
}
