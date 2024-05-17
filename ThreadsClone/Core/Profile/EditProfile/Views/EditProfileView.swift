//
//  EditProfileView.swift
//  ThreadsClone
//
//  Created by xx on 16/05/24.
//

import SwiftUI

struct EditProfileView: View {
    @State private var bio = ""
    @State private var link = ""
    @State private var isPrivateProfile = false
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGroupedBackground)
                    .edgesIgnoringSafeArea([.horizontal, .bottom])
                // Name and profile image
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Name")
                                .fontWeight(.semibold)
                            Text("Charles Leclerc")
                        }
                        Spacer()
                        
                        CircularProfileImageView()
                    }
                    
                    Divider()
                  // Bio
                    VStack(alignment: .leading) {
                        Text("Bio")
                            .fontWeight(.semibold)
                        TextField("Enter your bio...", text: $bio, axis: .vertical)
                        
                        
                    }
                    
                    Divider()
                    
                    // Link
                    VStack(alignment: .leading) {
                        Text("Bio")
                            .fontWeight(.semibold)
                        TextField("Add link", text: $link)
                        
                        
                    }
                    
                    Divider()
                    
                    // Private profile
                    Toggle("Private profile", isOn: $isPrivateProfile)
                    
                    Divider()
                }
                .font(.footnote)
                .padding()
                .background(.white)
                .clipShape(.rect(cornerRadius: 10))
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1.0)
                }
                .padding()
               
            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        
                    }
                    .font(.subheadline)
                    .foregroundStyle(.black)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Cancel") {
                        
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                }
                
            }
            
        }
    }
}

#Preview {
    EditProfileView()
}
