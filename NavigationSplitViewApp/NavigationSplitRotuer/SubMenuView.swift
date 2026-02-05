//
//  SubMenuView.swift
//  NavigationSplitViewApp
//
//  Created by ibarts on 05/02/26.
//

import SwiftUI

struct SubMenuView: View {
    @Bindable var viewModel:NavigationSplitViewModel
    
    var body: some View {
        List(viewModel.allITEngineers , selection: $viewModel.selectedITEngineer) {  engineer in
            
            Button {
                viewModel.selectedITEngineer = engineer
            } label: {
                VStack(alignment: .leading) {
                    Text(engineer.name)
                        .font(Font.headline)
                    
                    Text(engineer.designation)
                        .font(.subheadline)
                }
            }
            .buttonStyle(.plain)

        }
        
    }
}

// MARK: Preview
#Preview {
    SubMenuView(viewModel: NavigationSplitViewModel())
}
