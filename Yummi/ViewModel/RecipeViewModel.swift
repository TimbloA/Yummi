//
//  RecipeViewModel.swift
//  Yummi
//
//  Created by Timblo, Adi (WING) on 19/03/2024.
//

import Foundation

@Observable
class RecipeViewModel: ObservableObject {
    var servingNumber: Int = 1
    let range = 1...1000000
    let step = 1
    var filterIngredients:Bool = false
    var recipes: [Recipe]{
        if filterIngredients {
            return filterIngredientsFunc()
        }else {
            return Recipes.examples
        }
    }
    init() {
        
    }
    
    func filterIngredientsFunc() -> [Recipe]{
        var output: [Recipe] = []
        var valid: Bool
        for recipe in Recipes.examples {
            valid = true
            for ingredient in recipe.Ingredients {
                for storedIngredient in IngredientsViewModel.shared.currIngredients {
                    if ingredient.name != storedIngredient.name {
                        valid = false
                    }
                }
                
            }
            if valid == true{
                output.append(recipe)
            }
        }
        return output
    }
}
