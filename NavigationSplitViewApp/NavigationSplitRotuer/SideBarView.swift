//
//  NavigationStationContentView.swift
//  NavigationSplitViewApp
//
//  Created by ibarts on 05/02/26.
//

import SwiftUI

struct SideBarView: View {
    @Bindable var viewModel: NavigationSplitViewModel
    
    var body: some View {
        List(selection: $viewModel.selectedCountry) {
            Section("Country List") {
                ForEach(viewModel.allCountriesList) { country in
                    VStack(alignment: .leading) {
                        Text(country.name)
                            .bold()
                        
                        Text(country.message)
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                    .tag(country)
                }
            }
        }
        .navigationTitle("Countries")
        .onChange(of: viewModel.selectedCountry) { _, _ in
            // Clear engineer selection when country changes
            viewModel.selectedITEngineer = nil
        }
    }
}

#Preview {
    SideBarView(viewModel:NavigationSplitViewModel())
}
