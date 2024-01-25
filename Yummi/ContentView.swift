//
//  ContentView.swift
//  Yummi
//
//  Created by Timblo, Adi (WING) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var currIngredients = currentIngredients()
    @State private var valIngredient = 0
    @State private var ingredientName = ""
    @State private var ingredientQuantity = 0
    let range = 1...1000000
    let step = 1
    
    enum categories: String, CaseIterable, Identifiable {
        case Fruit, Meat, Vegetable, Spice
        var id: Self { self }
    }


    @State private var Categories: Category = .Fruit

    var body: some View {
        VStack{
            Form{
                VStack(alignment: .leading, spacing:20) {
                    Text("\(currIngredients.ingredients[valIngredient].displayStats())")
                    
                    
                }
                .padding()
                VStack(alignment: .trailing){
                    Section{
                        
                        Button("Next Ingredient", action: {
                            if valIngredient == (self.currIngredients.ingredients.count)-1{
                                valIngredient = -1
                            }
                            valIngredient += 1}).baselineOffset(30).font(.title3).frame(maxWidth: .infinity,alignment:.center)
                    }
                }
            }
        VStack(){
            Form{
                VStack{
                    Text("Enter New Ingredient").frame(maxWidth: .infinity,alignment:.center).font(.title2)
                    Section{
                        TextField("Name",text: $ingredientName)
                        
                        Stepper(
                                    value: $ingredientQuantity,
                                    in: range,
                                    step: step
                                ) {
                                    Text("Quantity:\(ingredientQuantity) ")
                                }
                        Picker("Category",selection: $Categories) {
                            Text("Fruit").tag(categories.Fruit)
                            Text("Meat").tag(categories.Meat)
                            Text("Vegetable").tag(categories.Vegetable)
                            Text("Spice").tag(categories.Spice)
                        }
                        
                    }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
