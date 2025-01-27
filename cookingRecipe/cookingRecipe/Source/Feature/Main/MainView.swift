//
//  MainView.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/27/25.
//

import SwiftUI
import FlowKit

struct MainView: View {
    @Flow var flow
    @StateObject private var recipeVM = RecipeViewModel()
    var body: some View {
        VStack {
            HeaderView {
                flow.push(SettingView())
            }
            CustomTextField(text: $recipeVM.foodName)
                .onSubmit {
                    recipeVM.fetchRecipes()
                }
            Spacer()
        }
        Spacer()
        .ignoresSafeArea(.all)
    }
}

#Preview {
    MainView()
}
