//
//  ContentView.swift
//  Yummi
//
//  Created by Timblo, Adi (WING) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State var currIngredients = currentIngredients.examples
    @State private var valIngredient = 0

    var body: some View {
        NavigationView{
            VStack{
                Form{
                    VStack(alignment: .leading, spacing:20) {
                        Text("\(currIngredients[valIngredient].displayStats())")
                        
                        
                    }
                    VStack(alignment: .trailing){
                        Button("Next Ingredient", action: {
                            if valIngredient == (self.currIngredients.count)-1{
                                valIngredient = -1
                            }
                            valIngredient += 1}).font(.title3).frame(maxWidth: .infinity,alignment:.center)
                    }
                    Section {
                        List{
                            NavigationLink(destination: NewIngredientView(currIngredients: $currIngredients)){
                                Text("Enter New Ingredient")
                            }
                            NavigationLink(destination: RecipesView(recipes: Recipes.examples)){
                            Text("Recipes")
                            }
                        }
                    }
                }
            }.navigationTitle("Yummi")
        }
    }
}

#Preview {
    ContentView()
}
