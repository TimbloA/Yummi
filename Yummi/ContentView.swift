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

    var body: some View {
        VStack{
            Form{
                VStack(alignment: .leading, spacing:20) {
                    Text("\(currIngredients.ingredients[valIngredient].displayStats())")
                    
                    
                }
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
        
        }
    }
   
}

#Preview {
    ContentView()
}
