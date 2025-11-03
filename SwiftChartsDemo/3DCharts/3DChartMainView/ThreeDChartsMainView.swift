//
//  ThreeDChartsMainView.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 03/11/25.
//

import SwiftUI
import Charts
internal import Spatial

enum Chart3DType: String, CaseIterable, Identifiable {
    case basic = "Basic"
    case custom = "Custom"
    var id: Self { self }
}

struct ThreeDChartsMainView: View {
    @State private var selected3DChart: Chart3DType = .basic

    var body: some View {
        VStack {
            Picker(selection: $selected3DChart.animation()) {
                ForEach(Chart3DType.allCases) { chart3DType in
                    Text(chart3DType.rawValue)
                        .tag(chart3DType)
                }
            } label: {
                Text("3D Charts type")
            }
            .pickerStyle(.segmented)
            Spacer()
            Group {
                switch selected3DChart {
                case .basic:
                    Basic3DChart()
                case .custom:
                    Custom3DChart()
                }
            }
            Spacer()
        }
    }
}

#Preview {
    ThreeDChartsMainView()
}
