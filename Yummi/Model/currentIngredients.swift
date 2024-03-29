//
//  currentIngredients.swift
//  Yummi
//
//  Created by Timblo, Adi (WING) on 23/01/2024.
//

import Foundation

struct currentIngredients {
    
    #if DEBUG
    static var examples: [Ingredient] {
        [Ingredient(name: "Apple", quantity: 5, unit: Units.Whole, category: Category.Fruit, expiryDate: Date(timeIntervalSince1970: 1714475464)),
         Ingredient(name: "Banana", quantity: 40000, unit: Units.Whole, category: Category.Fruit, expiryDate: Date(timeIntervalSince1970: 1794495464)),
         Ingredient(name: "Bread", quantity: 1, unit: .Whole, category: .Carbohydrates,expiryDate: Date(timeIntervalSince1970: 1794415464))]
    }
    
    #endif
}
