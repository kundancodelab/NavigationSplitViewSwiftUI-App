//
//  SubMenuView.swift
//  NavigationSplitViewApp
//
//  Created by ibarts on 05/02/26.
//
import SwiftUI

struct SubMenuView: View {
    @Bindable var viewModel: NavigationSplitViewModel
    
    var body: some View {
        Group {
            if let selectedCountry = viewModel.selectedCountry {
                List(selectedCountry.allExpertEngineers) { engineer in
                    // ════════════════════════════════════════════════════════
                    // 🎯 NavigationLink(value:) - Modern iOS 16+ Approach
                    // ════════════════════════════════════════════════════════
                    // This pushes the `engineer` VALUE onto the navigation path.
                    // The actual destination is handled by .navigationDestination()
                    // IMPORTANT: Must be in the SAME COLUMN as the NavigationLink!
                    NavigationLink(value: engineer) {
                        VStack(alignment: .leading) {
                            Text(engineer.name)
                                .font(.headline)
                            
                            Text(engineer.designation)
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
                .navigationTitle(selectedCountry.name)
                // ════════════════════════════════════════════════════════════════
                // 🎯 .navigationDestination(for:) - MUST be in SAME COLUMN!
                // ════════════════════════════════════════════════════════════════
                // In NavigationSplitView, destination handlers must be placed
                // INSIDE the column where the NavigationLink exists.
                // This catches the ITEgineers value and shows the detail view.
                .navigationDestination(for: ITEgineers.self) { engineer in
                    NavigationDetailView(viewModel: viewModel)
                        .onAppear {
                            viewModel.selectedITEngineer = engineer
                        }
                }
            } else {
                ContentUnavailableView(
                    "Select a Country",
                    systemImage: "globe",
                    description: Text("Choose a country from the sidebar to see engineers")
                )
            }
        }
    }
}
