# NavigationSplitView Demo (SwiftUI)

This repository contains a small SwiftUI demo app built to explore and understand how `NavigationSplitView` works, including:

- Sidebar, content, and detail navigation  
- View transitions inside a split view  
- State-driven navigation  
- Adaptive behavior across different device sizes  

The goal of this project is learning and experimentation, not production usage.

---

## 📱 Overview

`NavigationSplitView` was introduced in iOS 16 as a modern replacement for complex `NavigationView` hierarchies, especially for iPad and Mac-style layouts.

This demo focuses on:
- How selection flows from sidebar → content → detail  
- How navigation state is managed  
- How views update when the selection changes  
- How `NavigationSplitView` behaves on compact vs regular size classes  

---

## 🧭 Navigation Structure

The app uses a three-column layout:

```swift
NavigationSplitView {
    SidebarView()
} content: {
    ContentView()
} detail: {
    DetailView()
}



Column Responsibilities
Column	Description
Sidebar	Primary navigation (top-level sections or categories)
Content	Secondary navigation based on sidebar selection
Detail	Final destination / detail screen

Each column may internally use a NavigationStack to push deeper views.

🧠 Concepts Explored

NavigationSplitView

NavigationStack

Sidebar-driven navigation

@State and @Binding for selection handling

NavigationLink(value:)

navigationDestination(for:)

Adaptive UI behavior for iPhone vs iPad

Programmatic vs user-driven navigation

📲 Adaptive Behavior
iPhone (Compact Width)

NavigationSplitView collapses into a single-column navigation flow

Sidebar and content views are pushed onto the navigation stack

iPad (Regular Width)

Sidebar, content, and detail views appear side-by-side

Selection changes update columns without pushing new screens

🛠 Requirements

Xcode: 15 or later

Swift: 5.9+

iOS: 16.0+

🚀 Getting Started

Clone the repository:

git clone https://github.com/your-username/navigation-splitview-demo.git


Open the project:

open NavigationSplitViewDemo.xcodeproj


Select an iPhone or iPad simulator

Build and run ▶️

 Purpose of This Project
 This project is:

A learning resource

A SwiftUI navigation playground

A reference implementation for NavigationSplitView

This project is not:

A production-ready app

A full architectural template

📖 References

Apple Documentation – NavigationSplitView
https://developer.apple.com/documentation/swiftui/navigationsplitview

WWDC Sessions on SwiftUI Navigation

📝 License

MIT License

Feel free to use, modify, and learn from this project.
