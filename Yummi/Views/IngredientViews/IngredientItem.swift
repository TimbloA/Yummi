//
//  IngredientItem.swift
//  Yummi
//
//  Created by Adi Timblo on 07/02/2024.
//

import SwiftUI

struct IngredientItem: View {
    let ingredient: Ingredient
    var body: some View {
        VStack(alignment: .leading, spacing:20) {
            Form{
                Text("\(ingredient.displayStats())")
            }
        }
    }
}

#Preview {
    IngredientItem(ingredient: Ingredient(name: "Apple", quantity: 5, unit: Units.Whole, category: Category.Fruit, expiryDate: Date(timeIntervalSince1970: 1714475464)))
}
