//
//  RecipeViewModel.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/27/25.
//

import Foundation

class RecipeViewModel: ObservableObject  {
    @Published var foodName = ""
    
    func fetchRecipes() {
        let pararams: [String: String] = [
            "RCP_NM" : foodName,
        ]
        
        NetworkRunner.shared.recipeRequest(url: "COOKRCP01/json/1/5" ,method: .get, parameters: pararams) { result in
            switch result {
            case .success(let data):
                print(data)
            case .failure(let error):
                print(error)
            }
        }
    }
}
