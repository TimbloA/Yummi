//
//  RecipeItem.swift
//  Yummi
//
//  Created by Timblo, Adi (WING) on 06/02/2024.
//

import SwiftUI

struct RecipeItem: View {
    let recipe: Recipe
    @ State private var star = "star"
   
    var body: some View {
        
        HStack {
            Image(systemName: checkFavourite())
            Text(recipe.Name)
            Spacer()
            Image(systemName: "\(recipe.rating).square")
        }
    }
    
    func checkFavourite() -> String {
        if recipe.isFavourite == true {
            return "star.fill"
        }else {
            return "star"
        }
    }
  
}

#Preview {
    RecipeItem(recipe: Recipe(Name: "Tomato Sandwich", Ingredients: [Ingredient(name: "Tomato", quantity: 3, unit: .Whole, category: .Fruit),Ingredient(name: "Bread", quantity: 1, unit: .Whole, category: .Carbohydrates)], isFavourite: true, rating: 3,Image: "TomatoSandwich",Steps: "Cut Tomatoes and Place on Toasted Bread"))
}
