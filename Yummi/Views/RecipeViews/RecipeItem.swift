//
//  RecipeItem.swift
//  Yummi
//
//  Created by Timblo, Adi (WING) on 06/02/2024.
//

import SwiftUI

struct RecipeItem: View {
    var recipe: Recipe
   
    var body: some View {
        
        HStack {

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
    RecipeItem(recipe: Recipes.examples[1])
}
