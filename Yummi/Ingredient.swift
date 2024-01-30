//
//  Ingredient.swift
//  Yummi
//
//  Created by Timblo, Adi (WING) on 23/01/2024.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    case Fruit
    case Vegetable
    case Meat
    case Spice
    case Dairy
    var id: Self { self }
}
enum Units: String, CaseIterable, Identifiable{
    case Kilogram
    case Gram
    case Litre
    case Millilitre
    case Whole
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
}
