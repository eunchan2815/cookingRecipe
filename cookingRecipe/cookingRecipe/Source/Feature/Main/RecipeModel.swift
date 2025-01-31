import Foundation

// MARK: - RecipeResponse
struct RecipeModel: Codable {
    let cookRcp01: CookRcp01?
    
    enum CodingKeys: String, CodingKey {
        case cookRcp01 = "COOKRCP01"
    }
}

// MARK: - CookRcp01
struct CookRcp01: Codable {
    let totalCount: String
    let row: [Recipe]?
    
    enum CodingKeys: String, CodingKey {
        case totalCount = "total_count"
        case row
    }
}

// MARK: - Recipe
struct Recipe: Codable, Hashable {
    let Material: String // 재료
    let rcpWay: String // 조리 방법
    let foodCategory: String // 요리 분류 (반찬, 국, 메인요리 등)
    let manualImgs: [String]? // 여러 이미지 URL들 (옵셔널로 변경)
    let infoNa: String // 나트륨
    let infoFat: String // 지방
    let infoCar: String // 탄수화물
    let infoPro: String // 단백질
    let rcpName: String // 레시피 이름
    let manualInstructions: [String]? // 조리 단계
    let attFileNoMk: String? // 파일 관련 URL
    let attFileNoMain: String // 메인 이미지 파일 URL

    var fullInstructions: String {
        return manualInstructions!.joined(separator: "\n")
    }

    enum CodingKeys: String, CodingKey {
        case Material = "RCP_PARTS_DTLS"
        case rcpWay = "RCP_WAY2"
        case foodCategory = "RCP_PAT2"
        case manualImgs = "MANUAL_IMGS"
        case infoNa = "INFO_NA"
        case infoFat = "INFO_FAT"
        case infoCar = "INFO_CAR"
        case infoPro = "INFO_PRO"
        case rcpName = "RCP_NM"
        case manualInstructions = "MANUAL_INSTRUCTIONS"
        case attFileNoMk = "ATT_FILE_NO_MK"
        case attFileNoMain = "ATT_FILE_NO_MAIN"
    }
}
