//
//  NutritionInfo.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/31/25.
//


import SwiftUI

enum NutritionInfo: String, CaseIterable {
    case Na // 나트륨
    case Fat // 지방
    case Car // 탄수화물
    case Pro // 단백질
    
    var infoString: String {
        switch self {
        case .Na:
            return "나트륨"
        case .Fat:
            return "지방"
        case .Car:
            return "탄수화물"
        case .Pro:
            return "단백질"
        }
    }
    
    func infoNum(for recipe: Recipe) -> String {
        switch self {
        case .Na:
            return recipe.infoNa
        case .Fat:
            return recipe.infoFat
        case .Car:
            return recipe.infoCar
        case .Pro:
            return recipe.infoPro
        }
    }
}
