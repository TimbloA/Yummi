//
//  ContentView.swift
//  Yummi
//
//  Created by Timblo, Adi (WING) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State public var currIngredients = currentIngredients()
    @State private var valIngredient = 0

    var body: some View {
        NavigationView{
            VStack{
                Form{
                    VStack(alignment: .leading, spacing:20) {
                        Text("\(currIngredients.ingredients[valIngredient].displayStats())")
                        
                        
                    }
                    VStack(alignment: .trailing){
                        Button("Next Ingredient", action: {
                            if valIngredient == (self.currIngredients.ingredients.count)-1{
                                valIngredient = -1
                            }
                            valIngredient += 1}).font(.title3).frame(maxWidth: .infinity,alignment:.center)
                    }
                    Section {
                        VStack{
                            NavigationLink(destination: NewIngredientView()){
                                Text("Enter New Ingredient")
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
