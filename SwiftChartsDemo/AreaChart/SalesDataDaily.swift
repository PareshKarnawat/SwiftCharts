//
//  SakesDataDaily.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 31/10/25.
//
import Foundation

struct Sales: Identifiable {
    let id = UUID()
    let day: String
    let value: Double
}

let salesDataAreaChart: [Sales] = [
    .init(day: "Mon", value: 50),
    .init(day: "Tue", value: 150),
    .init(day: "Wed", value: 170),
    .init(day: "Thu", value: 140),
    .init(day: "Fri", value: 200),
    .init(day: "Sat", value: 180)
]

let stackedData: [(category: String, items: [Sales])] = [
    ("Fruits", [
        .init(day: "Mon", value: 60),
        .init(day: "Tue", value: 80),
        .init(day: "Wed", value: 90),
        .init(day: "Thu", value: 85),
        .init(day: "Fri", value: 110),
        .init(day: "Sat", value: 100)
    ]),
    ("Vegetables", [
        .init(day: "Mon", value: 40),
        .init(day: "Tue", value: 70),
        .init(day: "Wed", value: 80),
        .init(day: "Thu", value: 65),
        .init(day: "Fri", value: 85),
        .init(day: "Sat", value: 75)
    ])
]
