//
//  SettingButton.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/28/25.
//

import SwiftUI

struct SettingButton: View {
    @State var selectedButton: button
    @Environment(\.colorScheme) var colorScheme
    let action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(colorScheme == .dark ? Color.white : Color.black)
                    .frame(width: 362, height: 67)
                HStack {
                    (colorScheme == .dark ? selectedButton.image : selectedButton.blackImage)
                        .resizable()
                        .frame(width: 26, height: 26)
                        .padding(.trailing, 10)
                    
                    Text(selectedButton.role)
                        .foregroundStyle(colorScheme == .dark ? Color.black : Color.white)
                        .font(.customFont(weight: .regular, size: 14))
                    Spacer()
                }
                .padding(.leading, 35)
            }
            .padding(.vertical, 2)
        }
    }
}
