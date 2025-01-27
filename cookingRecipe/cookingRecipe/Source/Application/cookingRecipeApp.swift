//
//  cookingRecipeApp.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/27/25.
//

import SwiftUI
import FlowKit

@main
struct cookingRecipeApp: App {
    var body: some Scene {
        WindowGroup {
            FlowPresenter(rootView: MainView())
        }
    }
}
