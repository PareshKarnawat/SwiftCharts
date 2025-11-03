//
//  InteractiveSelectionAreaChartView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 01/11/25.
//

import SwiftUI
import Charts

struct InteractiveSelectionAreaChartView: View {
    @State private var selectedDay: String?

    var body: some View {
        VStack {
            Text("Interactive Selection Area Chart")
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .font(.title)
                .multilineTextAlignment(.center)
            
            Chart(salesDataAreaChart) { item in
                AreaMark(
                    x: .value("Day", item.day),
                    y: .value("Value", item.value)
                )
                .foregroundStyle(
                    selectedDay == item.day
                    ? .red.opacity(0.6)
                    : .gray.opacity(0.3)
                )
            }
            .chartOverlay { proxy in
                GeometryReader { geo in
                    Rectangle().fill(.clear)
                        .contentShape(Rectangle())
                        .onTapGesture { location in
                            if let day: String = proxy.value(atX: location.x, as: String.self) {
                                withAnimation {
                                    selectedDay = day
                                }
                            }
                        }
                }
            }
            .frame(height: 250)
            
            if let selectedDay {
                Text("Selected: \(selectedDay)")
                    .bold()
                    .padding(.bottom, -50)
            }
        }
        .padding()
    }
}

#Preview {
    InteractiveSelectionAreaChartView()
}
