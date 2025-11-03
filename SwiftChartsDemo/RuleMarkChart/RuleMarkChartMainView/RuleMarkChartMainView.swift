//
//  RuleMarkChart.swift
//  SwiftChartsDemo
//
//  Created by Paresh  Karnawat on 01/11/25.
//

import SwiftUI

enum RuleMarkTypes: String, CaseIterable, Identifiable
{
    case basicX         = "Basic H"
    case basicV         = "Basic V"
    case dashed         = "Dashed"
    case dynamicMaxMin  = "Dynamic"
    case rangeX         = "H Range"
    case rangeY         = "V Range"
    case median         = "Median"
    case multiple       = "Multiple"

    var id: Self { self }
}


struct RuleMarkChartMainView: View {
    @State private var selectedRuleMark: RuleMarkTypes = .basicX
    
    var body: some View {
        VStack(spacing: 20){
            TwoLineSegmentedControl(
                items: RuleMarkTypes.allCases,
                selection: $selectedRuleMark,
                label: { $0.rawValue }
            )
            .padding()
            
            ruleChartView(for: selectedRuleMark)
                .transition(.opacity)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
    
    @ViewBuilder
    func ruleChartView(for selection: RuleMarkTypes) -> some View {
        switch selection {
        case .basicX: BasicHorizontalRuleMarkView()
        case .basicV: BasicVerticalRuleMarkView()
        case .dashed: DashedStyleRuleMarkView()
        case .dynamicMaxMin: DynamicMaxMinRuleMarkView()
        case .rangeX:  HorizontalRangeRuleMarkView()
        case .rangeY:  VerticalRangeRuleMarkView()
        case .median:  MedianRuleMarkView()
        case .multiple: MultipleVerticalRuleMarkView()
        }
    }
}

struct TwoLineSegmentedControl<SelectionValue: Hashable>: View {
    let items: [SelectionValue]
    @Binding var selection: SelectionValue
    var label: (SelectionValue) -> String
    
    var columns: Int = 4
    
    var body: some View {
        let grid = Array(repeating: GridItem(.flexible(), spacing: 10), count: columns)
        
        LazyVGrid(columns: grid, spacing: 10) {
            ForEach(items, id: \.self) { item in
                segmentItem(item)
            }
        }
    }
    
    @ViewBuilder
    private func segmentItem(_ item: SelectionValue) -> some View {
        let isSelected = (selection == item)
        
        Text(label(item))
            .font(.callout)
            .lineLimit(1)
            .minimumScaleFactor(0.6)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 10)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(isSelected ? Color.accentColor.opacity(0.15) : Color.gray.opacity(0.08))
            )
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(isSelected ? Color.accentColor : Color.gray.opacity(0.4),
                            lineWidth: 1)
            )
            .contentShape(Rectangle())
            .onTapGesture {
                selection = item
            }
    }
}

#Preview {
    RuleMarkChartMainView()
}
