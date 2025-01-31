//
//  CategoryButton.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/28/25.
//

import SwiftUI

struct CategoryButton: View {
    let action: () -> Void
    
    var body: some View {
        HStack(spacing: 30) {
            ForEach(Category.allCases, id: \.self) { category in
                Button {
                    action()
                } label: {
                    ZStack {
                        Circle()
                            .fill(Color.sub)
                            .frame(width: 70, height: 70)
                        VStack {
                            category.categoryImage
                                .resizable()
                                .frame(width: 40, height: 40)
                            Text(category.categoryName)
                                .font(.customFont(weight: .semiBold, size: 12))
                                .foregroundStyle(.black)
                                .padding(.bottom, 3)
                        }
                    }
                }
            }
        }
        .padding()
    }
}

