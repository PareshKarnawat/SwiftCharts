//
//  ToyShape.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 30/10/25.
//
import Foundation

struct ToyShape: Identifiable {
    let id = UUID()
    let type: String
    let count: Double
}

let staticBardata: [ToyShape] = [
    .init(type: "Cube", count: 5),
    .init(type: "Sphere", count: 2),
    .init(type: "Pyramid", count: 7)
]
