//
//  UserCellView.swift
//  ThreadsClone
//
//  Created by xx on 16/05/24.
//

import SwiftUI

struct UserCellView: View {
    var body: some View {
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
        .padding(.horizontal)
    }
}

#Preview {
    UserCellView()
}
