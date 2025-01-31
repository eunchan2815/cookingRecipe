//
//  RecipeService.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/31/25.
//


import SwiftUI

enum RecipeService: String {
    case info
    case material
    case way
    
    var serviceString: String {
        switch self {
        case .info:
            return "영양정보"
        case .material:
            return "재료"
        case .way:
            return "만드는법"
        }
    }
}
