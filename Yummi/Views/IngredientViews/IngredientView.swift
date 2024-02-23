//
//  ContentView.swift
//  Yummi
//
//  Created by Timblo, Adi (WING) on 23/01/2024.
//

import SwiftUI

struct IngredientView: View {
    @State var currIngredients = currentIngredients.examples
    @State private var valIngredient = 0
    @State private var newIngredient: Bool = false
    var body: some View {
        NavigationView{
            if newIngredient == true {
                Form{
                   
                        Section{
                            VStack{
                                
                                IngredientItem(ingredient: currIngredients[valIngredient])
                                VStack(alignment: .trailing){
                                    Button("Next Ingredient", action: {
                                        if valIngredient == (self.currIngredients.count)-1{
                                            valIngredient = -1
                                        }
                                        valIngredient += 1}).font(.title3).frame(maxWidth: .infinity,alignment:.center)
                                }
                            }
                        }
                        Section{
                            NewIngredientView(currIngredients: $currIngredients)
                        }
                 
                    
                }.navigationTitle("Add New")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Toggle("Show All", isOn: $newIngredient)
                        }
                    }
                    }else{
                        VStack{
                            AllIngredientsView(currIngredients: currIngredients)
                        } .toolbar {
                            ToolbarItem(placement: .navigationBarTrailing) {
                                Toggle("Add New", isOn: $newIngredient)
                            }
                        }
            }
            
            
        }
    }
}

#Preview {
    IngredientView()
}
