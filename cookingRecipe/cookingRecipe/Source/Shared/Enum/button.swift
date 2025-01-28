//
//  button.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/28/25.
//

import SwiftUI

enum button {
    case call
    case notion
    case coin
    
    var role: String {
        switch self {
        case .call:
            return "문의하기"
        case .notion:
            return "개인정보 처리방침"
        case .coin:
            return "후원하기"
        }
    }
    
    var image: Image {
        switch self {
        case .call:
            return Image(icon: .headset)
        case .notion:
            return Image(icon: .key)
        case .coin:
            return Image(icon: .coin)
        }
    }
    
    var blackImage: Image {
        switch self {
        case .call:
            return Image(icon: .whiteHeadset)
        case .notion:
            return Image(icon: .whiteKey)
        case .coin:
            return Image(icon: .whiteCoin)
        }
    }
}
