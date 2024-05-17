//
//  ExploreView.swift
//  ThreadsClone
//
//  Created by xx on 16/05/24.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0..<10, id: \.self) { _ in
                        VStack {
                           UserCellView()
                            Divider()
                        }
                    }
                }
                .padding(.vertical, 4)
            }
            .searchable(text: $searchText, prompt: "Search")
            .navigationTitle("Search")
        }
    }
}


#Preview {
    ExploreView()
}
