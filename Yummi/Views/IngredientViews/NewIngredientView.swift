//
//  NewIngredientView.swift
//  Yummi
//
//  Created by Timblo, Adi (WING) on 01/02/2024.
//

import SwiftUI

struct NewIngredientView: View {
    @StateObject var ingredientsViewModel: IngredientsViewModel = IngredientsViewModel()
    @Binding var currIngredients: [Ingredient]
    var body: some View {
  
    
            VStack{
                Text("Enter New Ingredient").frame(maxWidth: .infinity,alignment:.center).font(.title2)
                Section{
                    TextField("Name",text: $ingredientsViewModel.ingredientName)
                    
                    Stepper(
                        value: $ingredientsViewModel.ingredientQuantity,
                        in: ingredientsViewModel.range,
                        step: ingredientsViewModel.step
                    ) {
                        Text("Quantity:\(ingredientsViewModel.ingredientQuantity) ")
                    }
                    Picker("Category:",selection: $ingredientsViewModel.category) {
                        Text("Fruit").tag(Category.Fruit)
                        Text("Meat").tag(Category.Meat)
                        Text("Vegetable").tag(Category.Vegetable)
                        Text("Spice").tag(Category.Spice)
                        Text("Dairy").tag(Category.Dairy)
                        Text("Carbohydrates").tag(Category.Carbohydrates)
                    }
                    Picker("Units:",selection: $ingredientsViewModel.unit) {
                        Text("Kilogram").tag(Units.Kilogram)
                        Text("Gram").tag(Units.Gram)
                        Text("Litre").tag(Units.Litre)
                        Text("Millilitre").tag(Units.Millilitre)
                        Text("Whole").tag(Units.Whole)
                    }
                    DatePicker(
                        "Expiry Date:",
                        selection: $ingredientsViewModel.date,
                        displayedComponents: [.date]
                    )
                
                }
            }
        
        
 
        Section{
            Spacer()
            Button(ingredientsViewModel.submitName, action: {
                if ingredientsViewModel.ingredientName != "" && ingredientsViewModel.ingredientQuantity != 0 {
                    ingredientsViewModel.addNewIngredient()
                }
            }).font(.title2)
            
            
        }

    }
    
}

#Preview {
    NewIngredientView(currIngredients: .constant(currentIngredients.examples))
}
