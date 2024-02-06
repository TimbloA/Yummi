//
//  Recipes.swift
//  Yummi
//
//  Created by Timblo, Adi (WING) on 02/02/2024.
//

import Foundation

struct Recipes {
    var recipes: [Recipe]
  
    #if DEBUG
    static var examples: [Recipe] {
        [Recipe(Name: "Banana Sundae", Ingredients: [Ingredient(name: "Banana", quantity: 1, unit: .Whole, category: .Fruit)], isFavourite: true, rating: 9),
         Recipe(Name: "Tomato Sandwich", Ingredients: [Ingredient(name: "Tomato", quantity: 3, unit: .Whole, category: .Fruit),Ingredient(name: "Bread", quantity: 1, unit: .Whole, category: .Carbohydrates)], isFavourite: true, rating: 3),
         Recipe(Name: "Toast", Ingredients: [Ingredient(name: "Bread", quantity: 1, unit: .Whole, category: .Carbohydrates)], isFavourite: false, rating: 7)]
    }
    #endif
}
    
