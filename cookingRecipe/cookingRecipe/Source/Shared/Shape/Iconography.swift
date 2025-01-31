//
//  Iconography.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/28/25.
//

import SwiftUI

enum Iconography: String {
    case appIcon = "Fork"
    case setting = "Setting"
    case book = "Book"
    case search = "Search"
    
    case headset = "BHeadset"
    case key = "BKey"
    case coin = "BCoin"
    case whiteHeadset = "Headset"
    case whiteKey = "Key"
    case whiteCoin = "Coin"
    
    case plus = "Plus"
    case minus = "Minus"
    case whitePlus = "WPlus"
    case whiteMinus = "WMinus"
    
    case burger = "Burger"
    case sushi = "Sushi"
    case rice = "Rice"
    case carrot = "Carrot"
    
    
    case cal = "Cal"
    case calDark = "CalBlack"
}

extension Image {
    init(icon: Iconography) {
        self = Image(icon.rawValue)
    }
}
