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
        List(viewModel.messages , selection: $viewModel.selectedMessage) { item in
            Button {
                viewModel.selectedMessage = item
            } label: {
                VStack(alignment: .leading) {
                    Text(item.name)
                        .bold()
                    
                    Text(item.message)
                        .font(.caption)
                }
            }
            .buttonStyle(.plain)

        }
    }
}

#Preview {
    SideBarView(viewModel:NavigationSplitViewModel())
}
