//
//  RecipeViewModel.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/27/25.
//

import Foundation

class RecipeViewModel: ObservableObject {
    @Published var foodName = "라면"
    @Published var recipes: [Recipe] = []
    @Published var isLoading = false
    
    func fetchRecipes() {
        self.isLoading = true
        
        NetworkRunner.shared.recipeRequest(url: "COOKRCP01/json/1/5/RCP_NM=\(foodName)", method: .get, response: RecipeModel.self) { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let data):
                    self?.recipes = data.cookRcp01?.row ?? []
                    self!.isLoading = false
                case .failure(let error):
                    print(error)
                    self!.isLoading = false
                }
            }
        }
    }
}
