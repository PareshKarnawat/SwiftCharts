//
//  Custom3DChart.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 03/11/25.
//

import SwiftUI
import Charts
internal import Spatial

struct Custom3DChart: View {
    @State private var pose = Chart3DPose(
        azimuth: .degrees(45),
        inclination: .degrees(30)
    )
    @State private var useHeightBasedStyle: Bool = false
    @State private var usePerspectiveCamera: Bool = false
    
    var body: some View {
        VStack {
            Text("Custom 3D Chart")
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .font(.title)
            
            Chart3D {
                SurfacePlot(x: "X", y: "Y", z: "Z") { x, z in
                    let h = hypot(x, z)
                    return h == 0 ? 1 : sin(h) / h
                }
                .foregroundStyle(useHeightBasedStyle ?  .heightBased : .normalBased)
            }
            .chart3DPose($pose)
            .chart3DCameraProjection(usePerspectiveCamera ? .perspective : .orthographic)
            .chartXScale(domain: -10...10, range: -0.5...0.5)
            .chartZScale(domain: -10...10, range: -0.5...0.5)
            .chartYScale(domain: -0.23...1, range: -0.5...0.5)
            .frame(height: 400)
            .padding()
            
            Toggle("Use heightBasedStyle", isOn: $useHeightBasedStyle)
                .padding()
            
            Toggle("Perspective Camera", isOn: $usePerspectiveCamera)
                .padding()
        }
    }
}

#Preview {
    Custom3DChart()
}
