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

    var body: some View {
        NavigationView{
            Form {
                VStack{
                    
                    IngredientItem(ingredient: currIngredients[valIngredient])
                    VStack(alignment: .trailing){
                        Button("Next Ingredient", action: {
                            if valIngredient == (self.currIngredients.count)-1{
                                valIngredient = -1
                            }
                            valIngredient += 1}).font(.title3).frame(maxWidth: .infinity,alignment:.center)
                    }
                    VStack{
                        NewIngredientView(currIngredients: $currIngredients)
                    }
                    
                    
                }.navigationTitle("Yummi")
            }
        }
    }
}

#Preview {
    IngredientView()
}
