//
//  ServiceInfoView.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/31/25.
//

import SwiftUI

struct ServiceInfoView: View {
    @State var info: RecipeService
    var body: some View {
        HStack {
            Text(info.serviceString)
                .font(.customFont(weight: .semiBold, size: 22))
            Spacer()
        }
        .padding(.leading, 30)
    }
}
