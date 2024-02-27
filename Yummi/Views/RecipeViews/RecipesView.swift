//
//  RecipesView.swift
//  Yummi
//
//  Created by Timblo, Adi (WING) on 02/02/2024.
//

import SwiftUI

struct RecipesView: View {
    let recipes: [Recipe]
    @State private var searchText: String = ""
    var searchResults: [Recipe] {
        if searchText.isEmpty {
            return recipes
        }else {
            return recipes.filter { $0.Name.contains(searchText)}
        }
    }
    var body: some View {
        NavigationStack {
            List {
                ForEach(searchResults,id: \.self.Name) { recipe in
                    NavigationLink(destination: SingleRecipeView(recipe: recipe)){
                        RecipeItem(recipe:recipe)
                    }
                    
                }
            }.navigationTitle("Recipes")
        }
        .searchable(text: $searchText)
    }
   
}

#Preview {
    RecipesView(recipes: Recipes.examples)
}
