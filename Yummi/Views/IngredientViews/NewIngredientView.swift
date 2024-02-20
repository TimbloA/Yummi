//
//  NewIngredientView.swift
//  Yummi
//
//  Created by Timblo, Adi (WING) on 01/02/2024.
//

import SwiftUI

struct NewIngredientView: View {
    @Binding var currIngredients: [Ingredient]
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

    @State private var submitName: String = "Submit Ingredient"
    var body: some View {
  
    
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
                        Text("Carbohydrates").tag(Category.Carbohydrates)
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
        
        
 
        Section{
            Spacer()
            Button(submitName, action: {
                if ingredientName != "" && ingredientQuantity != 0 {
                    currIngredients.append(Ingredient(name: ingredientName, quantity: ingredientQuantity, unit: unit, category: category, expiryDate: date))
                    submitName = "Submitted!"
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                        resetDisplay()
                    }
                }
            }).font(.title2)
            
            
        }
        
        
        
    }
    func resetDisplay() {
    ingredientName = ""
    ingredientQuantity = 0
    category = Category.Fruit
    unit = Units.Gram
    submitName = "Submit Ingredient"
    }
}

#Preview {
    NewIngredientView(currIngredients: .constant(currentIngredients.examples))
}
