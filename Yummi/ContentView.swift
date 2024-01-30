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
    @State private var category: Category = .Fruit

    @State private var unit: Units = .Kilogram
    
    @State private var date = Date()

    
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
                        Picker("Category:",selection: $category) {
                            Text("Fruit").tag(Category.Fruit)
                            Text("Meat").tag(Category.Meat)
                            Text("Vegetable").tag(Category.Vegetable)
                            Text("Spice").tag(Category.Spice)
                            Text("Dairy").tag(Category.Dairy)
                        }
                        Picker("Units:",selection: $unit) {
                            Text("Kilogram").tag(Units.Kilogram)
                            Text("Gram").tag(Units.Gram)
                            Text("Litre").tag(Units.Litre)
                            Text("Millilitre").tag(Units.Millilitre)
                            Text("Whole").tag(Units.Whole)
                        }
                        DatePicker(
                            "Expiry Date:",
                            selection: $date,
                            displayedComponents: [.date]
                        )
                    }
                }
            }
            VStack {
                
                Button("Submit Ingredient", action: {
                    currIngredients.ingredients.append(Ingredient(name: ingredientName, quantity: ingredientQuantity, unit: unit, category: category, expiryDate: date))
                    resetDisplay()
                })
                }
            }
        }
        
    }
    func resetDisplay() {
    ingredientName = ""
    ingredientQuantity = 0
    category = Category.Fruit
    unit = Units.Gram
    }
}

#Preview {
    ContentView()
}
