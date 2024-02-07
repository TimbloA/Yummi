//
//  singleRecipeView.swift
//  Yummi
//
//  Created by Adi Timblo on 06/02/2024.
//

import SwiftUI

struct SingleRecipeView: View {
    let recipe: Recipe
    var body: some View {
        NavigationView {
           List(recipe.Ingredients,id: \.self.name){ ingredient in
               NavigationLink(destination: SingleIngredientView(ingredient: ingredient)) {
                   RecipeIngredientItem(ingredient: ingredient)
               }
           }.navigationTitle(recipe.Name)
        }
    }
}

#Preview {
    SingleRecipeView(recipe: Recipe(Name: "Tomato Sandwich", Ingredients: [Ingredient(name: "Tomato", quantity: 3, unit: .Whole, category: .Fruit),Ingredient(name: "Bread", quantity: 1, unit: .Whole, category: .Carbohydrates)], isFavourite: true, rating: 3))
}
