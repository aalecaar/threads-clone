//
//  TabView.swift
//  ThreadsClone
//
//  Created by xx on 16/05/24.
//

import SwiftUI

struct ThreadsTabView: View {
    @State private var selectedTab = 0
    @State private var showCreateThreadView = false
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                        .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                }
                .tag(0)
            
            ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(1)
            
            FeedView()
                .tabItem {
                    Image(systemName: "plus")
                }
                .tag(2)
            
            ActivityView()
                .tabItem {
                    Image(systemName: "heart")
                        .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
                }
                .tag(3)
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                        .environment(\.symbolVariants, selectedTab == 4 ? .fill : .none)
                }
                .tag(4)
        }
        .tint(.black)
        .sheet(isPresented: .constant(selectedTab == 2),
               onDismiss: { selectedTab = 0 },
               content: {
            CreateThreadView()
        })
    }
}

#Preview {
    ThreadsTabView()
}
