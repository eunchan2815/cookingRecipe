//
//  SearchResultDetail.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/31/25.
//

import SwiftUI
import Kingfisher

struct SearchResultDetail: View {
    @Environment(\.colorScheme) var ColorScheme
    let recipe: Recipe
    
    var body: some View {
        ScrollView {
            //MARK: 음식이미지
            let imageUrl = URL(string: recipe.attFileNoMain)
            KFImage(imageUrl)
                .placeholder {
                    Rectangle()
                        .fill(Color.init(uiColor: .systemGray2))
                        .frame(width: 328, height: 234)
                }
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 328, height: 234)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .padding(.vertical)
            
            //MARK: 영양정보
            VStack {
                ServiceInfoView(info: .info)
                HStack {
                    ForEach(NutritionInfo.allCases, id: \.self) { info in
                        VStack {
                            ZStack {
                                Image(icon: ColorScheme == .dark ? .calDark : .cal)
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                Text(info.infoNum(for: recipe))
                                    .font(.customFont(weight: .extraLight, size: 20))
                            }
                            Text(info.infoString)
                                .font(.customFont(weight: .light, size: 13))
                        }
                    }
                }
                .padding(.bottom, 40)
                
                //MARK: 재료
                ServiceInfoView(info: .material)
                HStack {
                    VStack {
                        Text(recipe.clearMaterial)
                            .font(.customFont(weight: .light, size: 16))
                    }
                    Spacer()
                }
                .padding(.leading, 30)
                .padding(.top, 1)
                .padding(.bottom, 40)
                
                
                
                //MARK: 만드는법
                ServiceInfoView(info: .way)
                
                
            }
            .navigationTitle(recipe.rcpName)
            .font(.customFont(weight: .bold, size: 30))
            .addBackButton()
        }
    }
}

#Preview {
    SearchResultDetail(recipe: Recipe(Material: "", rcpWay: "", foodCategory: "", manualImgs: [""], infoNa: "fd", infoFat: "fd", infoCar: "dd", infoPro: "fd", rcpName: "fd", manualInstructions: ["fdf"], attFileNoMk: "", attFileNoMain: ""))
}
