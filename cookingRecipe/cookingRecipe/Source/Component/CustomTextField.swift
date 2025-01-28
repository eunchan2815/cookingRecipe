//
//  CustomTextField.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/27/25.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    let action: () -> Void
    
    var body: some View {
        HStack {
            Button {
                action()
            } label: {
                Image(icon: .search)
                    .resizable()
                    .frame(width: 24, height: 24)
                    .padding(.leading, 14)
            }
            TextField("검색어를 입력하세요", text: $text)
                .keyboardType(.webSearch)
                .tint(.red)
                .padding(.vertical, 14)
        }
        .overlay {
            RoundedRectangle(cornerRadius: 50)
                .stroke(Color.init(uiColor: .systemRed), lineWidth: 1)
        }
        .padding(.horizontal)
        .hideKeyBoard()
    }
}
