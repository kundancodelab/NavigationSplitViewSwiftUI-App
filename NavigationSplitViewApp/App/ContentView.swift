//
//  ContentView.swift
//  NavigationSplitViewApp
//
//  Created by ibarts on 05/02/26.
//

import SwiftUI

struct ContentView: View {
    @State var viewModel = NavigationSplitViewModel()
    
    var body: some View {
        NavigationSplitView {
            // ═══════════════════════════════════════════════
            // COLUMN 1: SIDEBAR
            // ═══════════════════════════════════════════════
            SideBarView(viewModel: viewModel)
        } content: {
            // ═══════════════════════════════════════════════
            // COLUMN 2: SUBMENU
            // ═══════════════════════════════════════════════
            SubMenuView(viewModel: viewModel)
        } detail: {
            // ═══════════════════════════════════════════════
            // COLUMN 3: DETAIL VIEW
            // ═══════════════════════════════════════════════
            // Default view when no engineer is selected
            NavigationDetailView(viewModel: viewModel)
        }
    }
}

#Preview {
    ContentView()
}

/*
 struct HomeView: View {
     @EnvironmentObject var menuRouter: MenuRouter  // Controls station navigation
     
     var body: some View {
         NavigationSplitView {
             // ═══════════════════════════════════════════════
             // COLUMN 1: SIDEBAR
             // ═══════════════════════════════════════════════
             SideBar()
                 .environmentObject(menuRouter)
             
         } content: {
             // ═══════════════════════════════════════════════
             // COLUMN 2: STATIONS MENU
             // ═══════════════════════════════════════════════
             StationsMenu()
                 .environmentObject(menuRouter)
                 
         } detail: {
             // ═══════════════════════════════════════════════
             // COLUMN 3: DETAIL VIEW (Default = WelcomeScreen)
             // ═══════════════════════════════════════════════
             DetailView()
         }
     }
 }
 */
