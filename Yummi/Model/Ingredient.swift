//
//  Ingredient.swift
//  Yummi
//
//  Created by Timblo, Adi (WING) on 23/01/2024.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    case Fruit = "Fruit"
    case Vegetable
    case Meat
    case Spice
    case Dairy
    case Carbohydrates
    var id: Self { self }
}
enum Units: String, CaseIterable, Identifiable{
    case Kilogram = "kg"
    case Gram = "g"
    case Litre = "L"
    case Millilitre = "ml"
    case Whole = "Whole"
    var id: Self { self }
}
struct Ingredient {

    let name: String
    var quantity: Int
    var unit: Units
    let category: Category
    var expiryDate = Date()
    
    func formatDate() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.locale = Locale(identifier: "en_GB")
        let display = formatter.string(from: expiryDate)
        
        return display
    }
    
    func displayStats()-> String {
        return"""
              Name: \(name)
              Quantity: \(quantity)
              Unit: \(unit)
              Category: \(category)
              Expiry Date: \(formatDate())
              """
    }
    
    func simpleDisplay() -> String {
        return " \(quantity) \(unit) of \(name)"
    }
    
//    func addNewIngredient(ingredientList: [Ingredient]) -> [Ingredient] {
//       return
//    }
}
