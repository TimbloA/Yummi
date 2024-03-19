//
//  RootTabView.swift
//  Yummi
//
//  Created by Adi Timblo on 07/02/2024.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            IngredientView()
                .tabItem {
                    Image(systemName: "carrot")
                    Text("Ingredients")
                }
            RecipesView()
                .tabItem {
                    Image(systemName: "fork.knife")
                    Text("Recipes")
                }
        }
    }
}

#Preview {
    RootTabView()
}
