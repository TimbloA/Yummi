//
//  AllIngredientsView.swift
//  Yummi
//
//  Created by Timblo, Adi (WING) on 22/02/2024.
//

import SwiftUI

struct AllIngredientsView: View {
    @State var currIngredients: [Ingredient]
    var body: some View {
        NavigationView {
            List {
                ForEach(currIngredients,id: \.self.name) { ingredient in
                    Text("ingredient")
                }
            }.navigationTitle("All Ingredients")
        }
        
    }
}

#Preview {
    AllIngredientsView(currIngredients: currentIngredients.examples)
}
