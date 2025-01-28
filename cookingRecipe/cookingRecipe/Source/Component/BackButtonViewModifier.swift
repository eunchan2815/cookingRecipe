//
//  AddBackButtonViewModifier.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/28/25.
//

import SwiftUI

struct BackButtonViewModifier: ViewModifier {
    @Environment(\.dismiss) var dismiss
    @Environment(\.colorScheme) var colorScheme
    func body(content: Content) -> some View {
        content
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        dismiss()
                    }) {
                        HStack {
                            Image(systemName: "chevron.left")
                                .foregroundStyle(colorScheme == .dark ? Color.white : Color.black)
                        }
                    }
                }
            }
    }
}

extension View {
    func addBackButton() -> some View {
        self.modifier(BackButtonViewModifier())
    }
}
