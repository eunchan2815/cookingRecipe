//
//  SettingButton.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/28/25.
//

import SwiftUI

struct SettingButton: View {
    enum button {
        case call
        case notion
        case coin
        
        var role: String {
            switch self {
            case .call:
                "문의하기"
            case .notion:
                "개인정보 처리방침"
            case .coin:
                "후원하기"
            }
        }
        
        var image: Image {
            switch self {
            case .call:
                Image(icon: .headset)
            case .notion:
                Image(icon: .key)
            case .coin:
                Image(icon: .coin)
            }
        }
        
        var blackImage: Image {
            switch self {
            case .call:
                Image(icon: .whiteHeadset)
            case .notion:
                Image(icon: .whiteKey)
            case .coin:
                Image(icon: .whiteCoin)
            }
        }
    }
    
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
        }
    }
}
