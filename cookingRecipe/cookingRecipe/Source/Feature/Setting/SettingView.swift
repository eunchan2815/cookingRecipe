//
//  SettingView.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/28/25.
//

import SwiftUI

struct SettingView: View {
    @State private var num = 5
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        VStack {
            HStack {
                Image(icon: .book)
                    .resizable()
                    .frame(width: 50, height: 50)
                Text("설정")
                    .font(.customFont(weight: .semiBold, size: 30))
                Spacer()
            }
            .padding(.horizontal)
            
            HStack {
                Text("레시피추천 최대 페이지")
                    .font(.customFont(weight: .semiBold, size: 20))
                Spacer()
                
                Button {
                    num += 1
                } label: {
                    Image(colorScheme == .dark ? .wPlus : .plus)
                        .resizable()
                        .frame(width: 25, height: 25)
                }
                Text("\(num)")
                    .font(.customFont(weight: .semiBold, size: 20))
                Button {
                    num -= 1
                } label: {
                    Image(colorScheme == .dark ? .wMinus : .minus)
                        .resizable()
                        .frame(width: 25, height: 25)
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 24)
            VStack {
                SettingButton(selectedButton: .call) {
                    
                }
                SettingButton(selectedButton: .notion) {
                    
                }
                SettingButton(selectedButton: .coin) {
                    
                }
            }
            .padding(.vertical, 14)
        }
        .addBackButton()
        Spacer()
    }
}

#Preview {
    SettingView()
}
