//
//  IngredientItem.swift
//  Yummi
//
//  Created by Adi Timblo on 07/02/2024.
//

import SwiftUI

struct RecipeIngredientItem: View {
    let ingredient: Ingredient
    let servings: Int
        var body: some View {
            HStack {
                Text("\(ingredient.quantity*servings) \(ingredient.unit.rawValue) \(ingredient.name)")
               }
    }
}

#Preview {
    RecipeIngredientItem(ingredient: Ingredient(name: "Tomato", quantity: 3, unit: .Whole, category: .Fruit),servings:1)
}
