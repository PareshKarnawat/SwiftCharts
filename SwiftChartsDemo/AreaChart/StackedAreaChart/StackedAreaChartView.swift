//
//  StackedAreaChartView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 01/11/25.
//

import SwiftUI
import Charts

enum StackMethod: String, CaseIterable, Identifiable {
    case standard = "Standard"
    case center = "Center"
    case normalised = "Normalised"
    case unstacked = "Unstacked"
    var id: Self { self }
    
    var stacking: MarkStackingMethod {
        switch self {
        case .standard:   return .standard
        case .center:     return .center
        case .normalised: return .normalized
        case .unstacked:  return .unstacked
        }
    }
}

struct StackedAreaChartView: View {
    @State private var selectedStackedMethod : StackMethod =
        .standard
    
    var body: some View {
        VStack(spacing: 50) {
            VStack {
                Text("Stacked Area Chart")
                    .fontWeight(.bold)
                    .fontDesign(.rounded)
                    .font(.title)
                
                Chart {
                    ForEach(stackedData, id: \.category) { set in
                        ForEach(set.items) { item in
                            AreaMark(
                                x: .value("Day", item.day),
                                y: .value("Value", item.value),
                                stacking: selectedStackedMethod.stacking
                            )
                            .foregroundStyle(by: .value("Category", set.category))
                        }
                    }
                }
                .frame(height: 250)
            }
                
            Picker(selection: $selectedStackedMethod.animation()) {
                ForEach(StackMethod.allCases) { stackMethod in
                    Text(stackMethod.rawValue)
                }
            } label: {
                Text("Stack Methods")
                    .font(.title)
            }
            .pickerStyle(.segmented)
            .padding(.horizontal)
        }
        .padding()
    }
}

#Preview {
    StackedAreaChartView()
}

