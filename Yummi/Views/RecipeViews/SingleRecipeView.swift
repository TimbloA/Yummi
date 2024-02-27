//
//  singleRecipeView.swift
//  Yummi
//
//  Created by Adi Timblo on 06/02/2024.
//

import SwiftUI

struct SingleRecipeView: View {
    let recipe: Recipe
    @State private var servingNumber: Int = 1
    let range = 1...1000000
    let step = 1
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
                        value: $servingNumber,
                        in: range,
                        step: step
                    ) {
                        Text("Servings: \(servingNumber) ").bold()
                    }
                }
                ForEach(recipe.Ingredients,id: \.self.name){ ingredient in
                    NavigationLink(destination: SingleIngredientView(ingredient: ingredient)) {
                        RecipeIngredientItem(ingredient: ingredient,servings: servingNumber)
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
    SingleRecipeView(recipe:  Recipe(Name: "Tomato Sandwich", Ingredients: [Ingredient(name: "Tomato", quantity: 3, unit: .Whole, category: .Fruit),Ingredient(name: "Bread", quantity: 1, unit: .Whole, category: .Carbohydrates)], isFavourite: true, rating: 3,Image: "TomatoSandwich",Steps: "Cut Tomatoes and Place on Toasted Bread"))
}
