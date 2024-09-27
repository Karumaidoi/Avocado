//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by Alex Maina on 26/09/2024.
//

import SwiftUI

struct RecipeRatingView: View {
    
    var recipe: Recipe
    
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...(recipe.rating), id: \.self) { item in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(.yellow)
            }
        }

    }
}

#Preview {
    RecipeRatingView(recipe: recipesData[0])
}
