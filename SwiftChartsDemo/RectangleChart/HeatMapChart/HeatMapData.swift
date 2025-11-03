//
//  HeatMapData.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 31/10/25.
//

import Foundation

struct HeatMapData: Identifiable {
    let locationX: Int
    let locationY: Int
    let temperature: Double
    let id = UUID()
    
    static var exampleData: [HeatMapData] {
        [HeatMapData(locationX: 50, locationY: 50, temperature: 23.0),
         HeatMapData(locationX: 50, locationY: 100, temperature: 15.0),
         HeatMapData(locationX: 50, locationY: 150, temperature: 25.0),
         HeatMapData(locationX: 50, locationY: 200, temperature: 22.5),
         
         HeatMapData(locationX: 100, locationY: 50, temperature: 20.0),
         HeatMapData(locationX: 100, locationY: 100, temperature: 26.5),
         HeatMapData(locationX: 100, locationY: 150, temperature: 29.4),
         HeatMapData(locationX: 100, locationY: 200, temperature: 17.0),
         
         HeatMapData(locationX: 150, locationY: 50, temperature: 24.0),
         HeatMapData(locationX: 150, locationY: 100, temperature: 23.5),
         HeatMapData(locationX: 150, locationY: 150, temperature: 21.5),
         HeatMapData(locationX: 150, locationY: 200, temperature: 15.0),
         
         HeatMapData(locationX: 200, locationY: 50, temperature: 10.0),
         HeatMapData(locationX: 200, locationY: 100, temperature: 26.5),
         HeatMapData(locationX: 200, locationY: 150, temperature: 27.0),
         HeatMapData(locationX: 200, locationY: 200, temperature: 17.0)
        ]
    }
}

