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
    RecipeItem(recipe:Recipe(Name: "Banana Sundae", Ingredients: [Ingredient(name: "Banana", quantity: 1, unit: .Whole, category: .Fruit)], isFavourite: true, rating: 9,Image:"TomatoSandwich"))
}
