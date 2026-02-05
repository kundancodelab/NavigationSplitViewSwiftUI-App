//
//  NavigationDetailView.swift
//  NavigationSplitViewApp
//
//  Created by ibarts on 05/02/26.
//

import SwiftUI

struct NavigationDetailView: View {
    @Bindable var viewModel:NavigationSplitViewModel
    
    var body: some View {
        VStack {
            if let  selectedItem = viewModel.selectedMessage {
                Text(selectedItem.message)
                    .font(Font.largeTitle.bold())
            } else {
                ContentUnavailableView("No Message Selected", systemImage: "exclamationmark.bubble", description:Text("Under Maintenance. \n Please try again later."))
            }
         
             
        }
    }
}


// MARK: Preview
#Preview {
    NavigationDetailView(viewModel: NavigationSplitViewModel())
}
