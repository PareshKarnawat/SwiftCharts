//
//  SalesDaily.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 01/11/25.
//
import Foundation

struct SalesDaily: Identifiable {
    let id = UUID()
    let day: String
    let value: Int
}

let salesSample: [SalesDaily] = [
    .init(day: "Mon", value: 50),
    .init(day: "Tue", value: 70),
    .init(day: "Wed", value: 40),
    .init(day: "Thu", value: 90),
    .init(day: "Fri", value: 60),
    .init(day: "Sat", value: 30),
    .init(day: "Sun", value: 80)
]
