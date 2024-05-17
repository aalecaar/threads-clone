//
//  ProfileView.swift
//  ThreadsClone
//
//  Created by xx on 16/05/24.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: ProfileThreadFilter = .threads
    @Namespace var animation
    // This takes the width of the screen, divides it by the number of elements that occupy it and the gives it 16 pixels of padding
    private var filterBarWidth: CGFloat {
        let count = CGFloat(ProfileThreadFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 16
    }
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HStack(alignment: .top) {
                    // Full name, username, bio
                    VStack(alignment: .leading, spacing: 12) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Charles Leclerc")
                                .font(.title2)
                                .fontWeight(.semibold)
                            Text("charles_leclerc")
                                .font(.subheadline)
                        }
                        
                        Text("Formula 1 driver for Scuderia Ferrari")
                            .font(.footnote)
                        Text("2 followers")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                    
                    Spacer()
                    // Profile image
                    CircularProfileImageView()
                }
                
                Button {
                    
                } label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 352, height: 44)
                        .background(.black)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                
                VStack {
                    HStack {
                        ForEach(ProfileThreadFilter.allCases) { filter in
                            VStack {
                                Text(filter.title)
                                    .font(.subheadline)
                                    .fontWeight(selectedFilter == filter ? .semibold : .regular)
                                
                                if selectedFilter == filter {
                                    Rectangle()
                                        .foregroundStyle(.black)
                                        .frame(width: filterBarWidth, height: 1)
                                        .matchedGeometryEffect(id: "item", in: animation)
                                } else {
                                    Rectangle()
                                        .foregroundStyle(.clear)
                                        .frame(width: filterBarWidth, height: 1)
                                }
                            }
                            .onTapGesture {
                                withAnimation(.spring) {
                                    selectedFilter = filter
                                }
                            }
                        }
                    }
                    LazyVStack {
                        ForEach(0..<10, id: \.self) { thread in
                            ThreadCellView()
                        }
                    }
                }
                .padding(.vertical, 8)
                
            }
        }
        .scrollIndicators(.hidden)
        .padding(.horizontal)
    }
}

#Preview {
    ProfileView()
}
