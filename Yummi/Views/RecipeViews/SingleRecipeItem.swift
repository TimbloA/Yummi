//
//  SingleRecipeItem.swift
//  Yummi
//
//  Created by Adi Timblo on 06/02/2024.
//

import SwiftUI

struct SingleRecipeItem: View {
    let recipe:  Recipe
    var body: some View {
        Text("\(recipe.Ingredients[0].name)")
        List
    }
}

#Preview {
    SingleRecipeItem(recipe:Recipe(Name: "Banana Sundae", Ingredients: [Ingredient(name: "Banana", quantity: 1, unit: .Whole, category: .Fruit)], isFavourite: true, rating: 9))
}
