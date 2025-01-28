//
//  MainView.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/27/25.
//

import SwiftUI

struct MainView: View {
    @StateObject private var recipeVM = RecipeViewModel()
    @State private var navigate = false
    var body: some View {
        NavigationStack {
            VStack {
                HeaderView { navigate = true }
                CustomTextField(text: $recipeVM.foodName, action: {
                    recipeVM.fetchRecipes()
                })
                .onSubmit {
                    recipeVM.fetchRecipes()
                }
                CategoryButton {
                    print("hello")
                }
                RecommendFood()
                    .padding(.vertical, 14)
                Spacer()
                PopularFood()
                Spacer()
            }
            .navigationDestination(isPresented: $navigate) {
                SettingView()
            }
        }
    }
}

#Preview {
    MainView()
}
