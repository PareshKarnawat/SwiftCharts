//
//  ExpenseItem.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 31/10/25.
//
import Foundation

struct ExpenseItem: Identifiable {
    let id = UUID()
    let category: String
    let amount: Double
}

let expenses: [ExpenseItem] = [
    .init(category: "Rent",        amount: 600),
    .init(category: "Food",        amount: 450),
    .init(category: "Transport",   amount: 200),
    .init(category: "Entertainment", amount: 250),
    .init(category: "Shopping",    amount: 300),
    .init(category: "Other",       amount: 150)
]
