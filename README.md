# Swift Charts

[![Platform](https://img.shields.io/badge/platform-iOS-lightgrey.svg)](https://github.com/PareshKarnawat/SwiftCharts)

An iOS SwiftUI app showcasing practical examples of Apple’s Swift Charts, including Bar, Line, Area, Point, Pie, Rectangle (heatmap), RuleMark overlays, and combined Line+Area+Points charts with interactive controls.

---

## 🎬 Demo

| Swift Charts Demo | Swift 3D Charts Demo |
| ----------------- | ----------------- |
| <video src="https://github.com/user-attachments/assets/1b177bd7-a1ce-4f89-a431-d5f257f38291" width="300" controls></video> | <video src="https://github.com/user-attachments/assets/94beda3e-2b46-4191-9228-53ae9cbe5979" width="300" controls></video> |

---

## 🖼️ Screenshots

| Bar Chart | Line Chart | Pie / Donut |
|-----------|------------|-------------|
| <img src="Resources/BarChart.png" width="200"/> | <img src="Resources/LineChart.png" width="200"/> | <img src="Resources/PieChart.png" width="200"/> |

| Area Chart | Rectangle / Heatmap | Combined Chart |
|------------|---------------------|----------------|
| <img src="Resources/AreaChart.png" width="200"/> | <img src="Resources/HeatmapChart.png" width="200"/> | <img src="Resources/CombinedChart.png" width="200"/> |

| Point Chart | RuleMark Chart | 3D Chart |
|-------------|----------------|----------------|
| <img src="Resources/PointChart.png" width="200"/> | <img src="Resources/RuleMarkChart.png" width="200"/> | <img src="Resources/3DChart.png" width="200"/> |

---

## ⚙️ Tech

* **SwiftUI**, **Swift Charts** (`import Charts`)
* **Minimum iOS**: iOS 16+
* **Xcode**: 16.x or newer (project created with tools version 26.0)

---

## ✅ Features

### 📊 Bar Charts

* Static, dynamic (time-based), and horizontal
* Average overlays & annotations
* Category-based color mapping

### 📈 Line Charts

* Single + multi-series
* Interpolation modes: linear, Catmull‑Rom, step
* Symbol + label annotation support

### 📉 Area Charts

* Gradient + stacked
* Interactive selection with chart overlay + proxy

### 🔹 Point Charts

* Scatter‑style
* Supports symbol size + annotation

### 🍩 Pie & Donut

* Segmented slices + legend support
* Donut center-label showing highest spend category

### 🟥 Rectangle Charts / Heatmap

* Bar‑like rectangles with dimensions
* Heat map via `RectangleMark` with explicit start/end & color encoding

### 📏 RuleMark Examples

* Horizontal/vertical rules
* Dashed/min/max/median indicators
* Range overlays

### 🔀 Combined: Line + Area + Points

* Toggle-driven composition
* Modes: Line / Area / Line+Area
* Optional dots, curve, labels

### 🧊 3D Charts (Chart3D)
* 3D Surface Plot examples
* Perspective vs Orthographic projection toggle
* Supports pose rotation via `Chart3DPose`
* Height-based surface color mode
* Customizable X/Y/Z domain + scale
  
---

## 🛠 Notes

* Uses minimal abstraction to showcase raw Swift Charts concepts
* Each example is separated for learning clarity
* Great reference for beginners → intermediate Swift Charts developers

---

## 🤝 Contributing

PRs + issues welcome!

