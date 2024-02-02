//
//  Recipes.swift
//  Yummi
//
//  Created by Timblo, Adi (WING) on 02/02/2024.
//

import Foundation

struct Recipes {
    var Recipes: [Recipe]
    
    func addRecipe()  {
        self.Recipes.append(Recipe(Name: "Banana Sundae", Ingredients: [Ingredient(name: "Banana", quantity: 1, unit: .Whole, category: <#T##Category#>)], isFavourite: true, rating: 4.5))
    }
}
    
