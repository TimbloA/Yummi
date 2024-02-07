//
//  SingleIngredientView.swift
//  Yummi
//
//  Created by Adi Timblo on 07/02/2024.
//

import SwiftUI

struct SingleIngredientView: View {
    let ingredient: Ingredient
    var body: some View {
        Form{
            IngredientItem(ingredient: ingredient)
        }
    }
}

#Preview {
    SingleIngredientView(ingredient: Ingredient(name: "Apple", quantity: 5, unit: Units.Whole, category: Category.Fruit, expiryDate: Date(timeIntervalSince1970: 1714475464)))
}
