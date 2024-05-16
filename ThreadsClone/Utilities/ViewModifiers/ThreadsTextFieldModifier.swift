//
//  ThreadsTextFieldModifier.swift
//  ThreadsClone
//
//  Created by xx on 15/05/24.
//

import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.horizontal, 24)
    }
}

extension View {
    /// Custom text field modifier for the Threads login and sign up views
    /// - Returns: A view modified by the specified modifiers
    func customTextFieldStyle() -> some View {
        modifier(ThreadsTextFieldModifier())
    }
}
