//
//  SearchView.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/31/25.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var recipeVM: RecipeViewModel
    
    var body: some View {
        VStack {
            if recipeVM.isLoading {
                ProgressView("레시피를 로딩하는 중이에요!")
            }
        }
        ScrollView {
            if !recipeVM.isLoading {
                HStack {
                    Text("검색결과")
                        .font(.customFont(weight: .semiBold, size: 22))
                    Spacer()
                }
                .padding(.leading, 16)
            }
            ForEach(recipeVM.recipes, id: \.self) { recipe in
                SearchResult(recipe: recipe)
                    .padding(.vertical)
            }
        }
        .onAppear {
            if !recipeVM.foodName.isEmpty {
                recipeVM.fetchRecipes()
            }
        }
        .refreshable {
            if !recipeVM.foodName.isEmpty {
                recipeVM.fetchRecipes()
            }
        }
    }
}
