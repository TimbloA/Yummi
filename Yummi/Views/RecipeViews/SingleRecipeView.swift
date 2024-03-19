//
//  singleRecipeView.swift
//  Yummi
//
//  Created by Adi Timblo on 06/02/2024.
//

import SwiftUI

struct SingleRecipeView: View {
    @ObservedObject var recipeViewModel: RecipeViewModel = RecipeViewModel()
    let recipe:Recipe
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Image(recipe.Image)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                Divider()
                Text("Rating: \(recipe.rating)/10").bold()
                Divider()
                HStack{
                    Text("Ingredients").bold()
                    Spacer()
                    Stepper(
                        value: $recipeViewModel.servingNumber,
                        in: recipeViewModel.range,
                        step: recipeViewModel.step
                    ) {
                        Text("Servings: \(recipeViewModel.servingNumber) ").bold()
                    }
                }
                ForEach(recipe.Ingredients,id: \.self.name){ ingredient in
                    NavigationLink(destination: SingleIngredientView(ingredient: ingredient)) {
                        RecipeIngredientItem(ingredient: ingredient,servings: recipeViewModel.servingNumber)
                    }
                }
                Divider()
                Text("Steps").bold()
                Text("\(recipe.Steps)")
                Spacer()
            
            }.navigationTitle(recipe.Name)
                .padding()
        }
    }
}

#Preview {
    SingleRecipeView(recipe: Recipes.examples[1])
}
