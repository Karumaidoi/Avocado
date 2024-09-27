//
//  RecipesViewCard.swift
//  Avocados
//
//  Created by Alex Maina on 26/09/2024.
//

import SwiftUI

struct RecipesViewCard: View {
    
    var recipe: Recipe
    let hapticFeedback = UIImpactFeedbackGenerator(style: .heavy);
    @State private var isPresented: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay {
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .foregroundColor(.white)
                                .font(Font.title.weight(.light))
                                .imageScale(.small)
                                .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                                .padding(.trailing, 20)
                                .padding(.top, 22)
                            
                            Spacer()
                        }
                       
                    }
                }
            
            VStack(alignment: .leading, spacing: 20) {
               // Title
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .foregroundColor(Color("ColorGreenMedium"))
                    .fontWeight(.bold)
                    .lineLimit(1)
                // Headline
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                
                // Rates
                RecipeRatingView(recipe: recipe)
                // Cooking
                RecipeCookingView(recipe: recipe)
            }
            .padding()
            .padding(.bottom, 12)
            
        }
        .onTapGesture {
            self.hapticFeedback.impactOccurred()
            self.isPresented = true
        }
        .sheet(isPresented: self.$isPresented) {
            RecipeDetailView(recipe: recipe)
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
    }
}

#Preview {
    RecipesViewCard(recipe: recipesData[0])
}
