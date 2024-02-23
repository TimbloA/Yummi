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
            List {
                ForEach(currIngredients,id: \.name) { ingredient in
                    Text(ingredient.name)
                }
            }.navigationTitle("All Ingredients")
    }
}

#Preview {
    NavigationView {
        AllIngredientsView(currIngredients: currentIngredients.examples)
    }
}
