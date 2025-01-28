//
//  HeaderView.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/28/25.
//

import SwiftUI

struct HeaderView: View {
    let action: () -> Void
    
    var body: some View {
        HStack {
            Image(icon: .appIcon)
                .resizable()
                .frame(width: 30, height: 30)
            Text("CR")
                .font(.customFont(weight: .medium, size: 30))
            Spacer()
            Button {
                action()
            } label: {
                Image(icon: .setting)
                    .resizable()
                    .frame(width: 30, height: 30)
            }
        }
        .padding(.horizontal, 14)
    }
}
