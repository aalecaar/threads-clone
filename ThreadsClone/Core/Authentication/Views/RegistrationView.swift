//
//  RegistrationView.swift
//  ThreadsClone
//
//  Created by xx on 15/05/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullName = ""
    @State private var username = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(.threadsLogo)
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack {
                Group {
                    TextField("Enter your email", text: $email)
                        .textContentType(.emailAddress)
                        .textInputAutocapitalization(.never)
                    
                    SecureField("Enter your password", text: $password)
                        .textContentType(.newPassword)
                    
                    TextField("Enter your full name", text: $fullName)
                        .textContentType(.name)
                        .textInputAutocapitalization(.words)
                    
                    
                    TextField("Enter your username", text: $username)
                        .textContentType(.username)
                        .textInputAutocapitalization(.never)
                    
                }
                .customTextFieldStyle()
            }
            
            Button {
                
            } label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 352, height: 44)
                    .background(.black)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("Already have an account?")
                    Text("Sign In")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
                .foregroundStyle(.black)
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    RegistrationView()
}
