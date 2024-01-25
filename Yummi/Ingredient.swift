//
//  Ingredient.swift
//  Yummi
//
//  Created by Timblo, Adi (WING) on 23/01/2024.
//

import Foundation

enum Category: String {
    case Fruit
    case Vegetable
    case Meat
    case Spice
}
enum Units: String{
    case Kilogram
    case Litre
    case Whole
}
struct Ingredient {

    let name: String
    var quantity: Int
    var unit: Units
    let category: Category
    let expiryDate: String
    
    func displayStats()-> String {
        return"""
              Name: \(name)
              Quantity: \(quantity)
              Unit: \(unit)
              Category: \(category)
              Expiry Date: \(expiryDate)
              """
    }
}
