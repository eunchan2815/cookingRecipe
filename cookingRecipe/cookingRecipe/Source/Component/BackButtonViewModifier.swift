//
//  AddBackButtonViewModifier.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/28/25.
//

import SwiftUI
import FlowKit

struct BackButtonViewModifier: ViewModifier {
    @Flow var flow
    @Environment(\.colorScheme) var colorScheme
    func body(content: Content) -> some View {
        content
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        flow.pop()
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
