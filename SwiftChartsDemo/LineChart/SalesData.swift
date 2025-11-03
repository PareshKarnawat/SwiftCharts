//
//  SalesData.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 31/10/25.
//
import Foundation

struct SalesData: Identifiable {
    let month: String
    let value: Double
    let id = UUID()
    
    static let store1Sales: [SalesData] = [
        .init(month: "Jan", value: 45),
        .init(month: "Feb", value: 75),
        .init(month: "Mar", value: 160),
        .init(month: "Apr", value: 200),
        .init(month: "May", value: 170),
        .init(month: "Jun", value: 240)
    ]
    
    static let store2Sales: [SalesData] = [
        .init(month: "Jan", value: 100),
        .init(month: "Feb", value: 150),
        .init(month: "Mar", value: 95),
        .init(month: "Apr", value: 175),
        .init(month: "May", value: 150),
        .init(month: "Jun", value: 275)
    ]
}
