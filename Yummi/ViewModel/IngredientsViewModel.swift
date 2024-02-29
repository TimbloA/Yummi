//
//  IngredientsViewModel.swift
//  Yummi
//
//  Created by Timblo, Adi (WING) on 29/02/2024.
//

import Foundation

@Observable
class IngredientsViewModel: ObservableObject{
    var currIngredients: [Ingredient]
    var ingredientName = ""
    var ingredientQuantity = 0
    let range = 1...1000000
    let step = 1

    enum categories: String, CaseIterable, Identifiable {
        case Fruit, Meat, Vegetable, Spice, Dairy, Carbohydrates
        var id: Self { self }
    }
    var category: Category = .Fruit

    var unit: Units = .Kilogram

    var date = Date()

    var submitName: String = "Submit Ingredient"
    
    init() {
        currIngredients = currentIngredients.examples
    }
    
    func addNewIngredient() {
       currIngredients.append(Ingredient(name: ingredientName, quantity: ingredientQuantity, unit: unit, category: category, expiryDate: date))
       submitName = "Submitted!"
       
        resetDisplay()
        
    }
    func resetDisplay() {
        ingredientName = ""
        ingredientQuantity = 0
        category = Category.Fruit
        unit = Units.Gram
        submitName = "Submit Ingredient"
    }
}
