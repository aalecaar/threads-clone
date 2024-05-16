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
                            HStack {
                                CircularProfileImageView()
                                
                                
                                VStack(alignment: .leading) {
                                    Text("maxverstappen")
                                        .fontWeight(.semibold)
                                    
                                    Text("Max Verstappen")
                                }
                                .font(.footnote)
                                
                                Spacer()
                                
                                Button {
                                    
                                } label: {
                                    Text("Follow")
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                        .frame(width: 100, height: 32)
                                        .overlay {
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color(.systemGray4), lineWidth: 1)
                                        }
                                }
                                .foregroundStyle(.black)
                                
                                
                            }
                            Divider()
                        }
                        .padding(.vertical, 4)
                    }
                }
                .padding(.horizontal)
                
            }
            .searchable(text: $searchText, prompt: "Search")
            .navigationTitle("Search")
        }
    }
}


#Preview {
    ExploreView()
}
