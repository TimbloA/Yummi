//
//  RecipesView.swift
//  Yummi
//
//  Created by Timblo, Adi (WING) on 02/02/2024.
//

import SwiftUI

struct RecipesView: View {
    let recipes: [Recipe]
    var body: some View {
        NavigationView {
            List {
                ForEach(recipes,id: \.self.Name) { recipe in
                    RecipeItem(recipe:recipe)
                }
                
            }.navigationTitle("Recipes")
        }
    }
}

#Preview {
    RecipesView(recipes: Recipes.examples)
}
