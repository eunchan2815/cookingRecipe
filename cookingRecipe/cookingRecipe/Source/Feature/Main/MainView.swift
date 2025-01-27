//
//  MainView.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/27/25.
//

import SwiftUI

struct MainView: View {
    @StateObject private var recipeVM = RecipeViewModel()
    var body: some View {
        VStack {
            CustomTextField(text: $recipeVM.foodName)
                .onSubmit {
                    recipeVM.fetchRecipes()
                }
            Spacer()
        }
    }
}

#Preview {
    MainView()
}
