//
//  RecommendFood.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/28/25.
//

import SwiftUI

struct RecommendFood: View {
    @StateObject private var recipeVM = RecipeViewModel()
    var body: some View {
        VStack {
            HStack {
                Text("이런 레시피는 어때요?")
                    .font(.customFont(weight: .semiBold, size: 22))
                Spacer()
                
                Button {
                    
                } label: {
                    Text("자세히")
                }
            }
            .padding(.horizontal)
        }
        Spacer()
        .onAppear {
//            recipeVM.fetchRecipes()
        }
    }
}

#Preview {
    RecommendFood()
}
