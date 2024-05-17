//
//  CreateThreadView.swift
//  ThreadsClone
//
//  Created by xx on 16/05/24.
//

import SwiftUI

struct CreateThreadView: View {
    @State private var threadText = ""
    @Environment(\.dismiss) var dismiss
    @FocusState var isKeyboardFocused: Bool
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack(alignment: .top) {
                    CircularProfileImageView()
                    
                    VStack(alignment: .leading, spacing: 4){
                        Text("maxverstappen")
                            .fontWeight(.semibold)
                        
                        
                        TextField("Start a thread...", text: $threadText, axis: .vertical)
                            .focused($isKeyboardFocused)
                            .onAppear {
                                isKeyboardFocused = true
                            }
                    }
                    .font(.footnote)
                    
                    Spacer()
                    
                    if !threadText.isEmpty {
                        Button {
                            threadText = ""
                        } label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundStyle(.gray)
                        }
                    }
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("New Thread")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Post") {
                        
                    }
                    .opacity(threadText.isEmpty ? 0.5 : 1.0)
                    .disabled(threadText.isEmpty)
                }
            }
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    CreateThreadView()
}
