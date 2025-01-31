//
//  PopularFood.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/28/25.
//

import SwiftUI

struct PopularFood: View {
    @StateObject private var recipeVM = RecipeViewModel()
    var body: some View {
        VStack {
            HStack {
                Text("요즘 유행하는 음식!")
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
    PopularFood()
}
