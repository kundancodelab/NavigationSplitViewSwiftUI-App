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
            if let  selectedItem = viewModel.selectedITEngineer {
                VStack(alignment: .leading) {
                    Group {
                        Text(selectedItem.name)
                            .font(Font.largeTitle.bold())
                        Text(selectedItem.country)
                            .font(Font.largeTitle.bold())
                        Text(selectedItem.designation)
                            .font(Font.largeTitle.bold())
                    }.padding(.all, 16)
                    
                
                    Spacer()
                }
               
            } else {
                ContentUnavailableView("No developer record found", systemImage: "wrench.and.screwdriver", description:Text("Under Maintenance. \n Please try again later."))
            }
         
             
        }
    }
}


// MARK: Preview
#Preview {
    NavigationDetailView(viewModel: NavigationSplitViewModel())
}
