//
//  Category.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/28/25.
//

import SwiftUI


enum Category: String, CaseIterable {
    case American
    case Japanese
    case Korean
    case Vegetarian
    
    var categoryImage: Image {
        switch self {
        case .American:
            return Image(icon: .burger)
        case .Japanese:
            return Image(icon: .sushi)
        case .Korean:
            return Image(icon: .rice)
        case .Vegetarian:
            return Image(icon: .carrot)
        }
    }
    
    var categoryName: String {
        switch self {
        case .American:
            return "Amr"
        case .Japanese:
            return "Jap"
        case .Korean:
            return "Kor"
        case .Vegetarian:
            return "Veg"
        }
    }
}
