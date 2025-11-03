//
//  ViewMonth.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 30/10/25.
//

import Foundation

struct ViewMonth : Identifiable {
    let id = UUID()
    let date : Date
    let viewCount : Int
}

extension Date {
    static func from(year: Int, month: Int, day: Int) -> Date {
        let components = DateComponents(year: year, month: month, day: day)
        return Calendar.current.date(from: components)!
    }
}

let viewMonths: [ViewMonth] = [
    .init(date:Date.from(year: 2025, month: 1, day: 1), viewCount: 55000),
    .init(date:Date.from(year: 2025, month: 2, day: 1), viewCount: 89000),
    .init(date:Date.from(year: 2025, month: 3, day: 1), viewCount: 54000),
    .init(date:Date.from(year: 2025, month: 4, day: 1), viewCount: 79000),
    .init(date:Date.from(year: 2025, month: 5, day: 1), viewCount: 130000),
    .init(date:Date.from(year: 2025, month: 6, day: 1), viewCount: 90000),
    .init(date:Date.from(year: 2025, month: 7, day: 1), viewCount: 88000),
    .init(date:Date.from(year: 2025, month: 8, day: 1), viewCount: 64000),
    .init(date:Date.from(year: 2025, month: 9, day: 1), viewCount: 74000),
    .init(date:Date.from(year: 2025, month: 10, day: 1), viewCount: 45000),
    .init(date:Date.from(year: 2025, month: 11, day: 1), viewCount: 99000),
    .init(date:Date.from(year: 2025, month: 12, day: 1), viewCount: 110000)
]
