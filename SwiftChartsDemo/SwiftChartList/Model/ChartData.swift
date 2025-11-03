//
//  Untitled.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 31/10/25.
//

import Foundation

struct ChartData: Identifiable {
    let id = UUID()
    let name: String
    let icon: String
    let type: ChartType
}
