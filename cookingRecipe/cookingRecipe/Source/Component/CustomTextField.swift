//
//  CustomTextField.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/27/25.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    
    var body: some View {
        VStack {
            TextField("검색어를 입력하세요", text: $text)
                .keyboardType(.webSearch)
                .tint(.red)
                .padding()
                .overlay {
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(Color.init(uiColor: .systemRed), lineWidth: 1)
                }
                .padding(.horizontal)
                .hideKeyBoard()
        }
    }
}
