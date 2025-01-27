//
//  RecipeResponse.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/27/25.
//


import Foundation

// MARK: - RecipeResponse
struct RecipeModel: Codable {
    let cookRcp01: CookRcp01
    
    enum CodingKeys: String, CodingKey {
        case cookRcp01 = "COOKRCP01"
    }
}

// MARK: - CookRcp01
struct CookRcp01: Codable {
    let totalCount: String
    let row: [Recipe]
    
    enum CodingKeys: String, CodingKey {
        case totalCount = "total_count"
        case row
    }
}

// MARK: - Recipe
struct Recipe: Codable {
    let rcpPartsDtls: String // 재료
    let rcpWay2: String // 조리 방법
    let manualImg20: String? // 이미지 URL들
    let infoNa: String // 나트륨
    let infoFat: String // 지방
    let infoCar: String // 탄수화물
    let manualImgs: [String] // 여러 이미지 URL들
    let rcpNm: String // 레시피 이름
    let manualInstructions: [String] // 조리 단계
    
    // 모든 조리 단계를 하나로 합친 텍스트
    var fullInstructions: String {
        return manualInstructions.joined(separator: "\n")
    }
}
