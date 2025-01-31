//
//  SearchResult.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/31/25.
//

import SwiftUI
import Kingfisher

struct SearchResult: View {
    @State private var navigate = false
    let recipe: Recipe
    var body: some View {
        VStack {
            Button {
                navigate = true
            } label: {
                let imageUrl = URL(string: recipe.attFileNoMain)
                KFImage(imageUrl)
                    .placeholder {
                        Rectangle()
                            .fill(Color.init(uiColor: .systemGray2))
                            .frame(width: 350, height: 140)
                    }
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 350, height: 140)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .offset(y: -10)
            }
            HStack {
                Text(recipe.rcpName)
                    .font(.customFont(weight: .semiBold, size: 20))
                    .padding(.leading, 14)
                Text("#\(recipe.foodCategory)")
                    .font(.customFont(weight: .regular, size: 15))
                Spacer()
                Button {
                    navigate = true
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.sub)
                            .frame(width: 110, height: 30)
                        Text("레시피 바로가기")
                            .foregroundStyle(.black)
                            .font(.customFont(weight: .semiBold, size: 14))
                    }
                }
            }
            .padding(.horizontal)
        }
        .navigationDestination(isPresented: $navigate) {
            SearchResultDetail(recipe: recipe)
        }
    }
}
