//
//  Basic3DChart.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 03/11/25.
//

import SwiftUI
import Charts
internal import Spatial

struct Basic3DChart: View {
    @State private var pose = Chart3DPose(
        azimuth: .degrees(45),
        inclination: .degrees(30)
    )
    
    var body: some View {
        VStack {
            Text("Basic 3D Chart")
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .font(.title)
                .padding()
            
            Chart3D {
                SurfacePlot(x: "x", y: "y", z: "z") { x, z in
                    (sin(5 * x) + sin(5 * z)) / 2
                }
            }
            .chart3DPose($pose)
            .frame(height: 400)
            .padding()
        }
    }
}

#Preview {
    Basic3DChart()
}
