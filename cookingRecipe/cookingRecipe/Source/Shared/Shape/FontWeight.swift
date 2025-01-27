//
//  PretendardWeight.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/28/25.
//
import SwiftUI

enum FontWeight: String {
    case regular = "ReadexPro-Regular"
    case bold = "ReadexPro-Bold"
    case semiBold = "ReadexPro-SemiBold"
    case light = "ReadexPro-Light"
    case extraLight = "ReadexPro-ExtraLight"
    case medium = "ReadexPro-Medium"
}

extension Font {
    static func customFont(weight: FontWeight, size: CGFloat) -> Self {
        Font.custom(weight.rawValue, size: size)
    }
}


