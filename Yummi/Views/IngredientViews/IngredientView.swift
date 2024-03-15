//
//  ContentView.swift
//  Yummi
//
//  Created by Timblo, Adi (WING) on 23/01/2024.
//

import SwiftUI

struct IngredientView: View {
    @StateObject var ingredientsViewModel: IngredientsViewModel = IngredientsViewModel()
    var body: some View {
        NavigationView{
            VStack{
                List {
                    ForEach(ingredientsViewModel.currIngredients,id: \.name) { ingredient in
                        
                        NavigationLink(destination: IngredientItem(ingredient: ingredient)){
                            Text(ingredient.name)
                        }
                    }
                    .onDelete(perform: deleteItems)
                    Button("Add New Ingredient") {
                        ingredientsViewModel.newIngredient.toggle()
                    }.foregroundColor(.blue)
                }.navigationTitle("All Ingredients")
                .sheet(isPresented: $ingredientsViewModel.newIngredient) {
                    Form {
                        NewIngredientView(ingredientsViewModel: ingredientsViewModel)
                            .presentationDetents([.medium, .large])
                    }
                }
            }
        }
    }
    func deleteItems(at offsets: IndexSet) {
        ingredientsViewModel.currIngredients.remove(atOffsets: offsets)
    }
}

#Preview {
    IngredientView()
}
