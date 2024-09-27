//
//  RecipeDetailView.swift
//  Avocados
//
//  Created by Alex Maina on 27/09/2024.
//

import SwiftUI

struct RecipeDetailView: View {
    // PROPERTIES
    var recipe: Recipe
    
    @State private var pulsate: Bool = false;
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                // IMAGE
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                // Group
                Group {
                    // TITLE
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .multilineTextAlignment(.center)
                        .padding(.top, 10)
                    //RATING
                    RecipeRatingView(recipe: recipe)
                    // COOKING
                    RecipeCookingView(recipe: recipe)
                    // INGREDIENTS
                    Text("Ingredients")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .modifier(FontModifier())
                    
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(recipe.ingredients, id: \.self) { item in
                            VStack(alignment: .leading, spacing: 5) {
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.center)
                                Divider()
                            }
                        }
                    }
                    // INSTRUCTIONS
                    Text("Instructions")
                        .fontWeight(.bold)
                        .modifier(FontModifier())
                    
                    ForEach(recipe.instructions,id: \.self) { item in
                        VStack (alignment: .center, spacing: 5) {
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height: 42)
                                .imageScale(.large)
                                .font(Font.title.weight(.ultraLight))
                                .foregroundColor(Color("ColorGreenAdaptive"))
                            
                            Text(item)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                                .frame(minHeight: 100)
                        }
                    }
                }
                
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            }

        }
        .edgesIgnoringSafeArea(.all)
        .overlay(
            HStack {
                Spacer()
                VStack {
                    Button( action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundColor(.white)
                            .shadow(radius: 4)
                            .opacity(self.pulsate ? 1.0 : 0.6)
                            .scaleEffect(self.pulsate ? 1.2 : 0.8, anchor: .center)
                            .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
                    })
                    Spacer()
                    
                }
                .padding(.trailing, 20)
                .padding(.top, 24)
            }
                .onAppear() {
                    self.pulsate.toggle()
                }
        )
    }
}

#Preview {
    RecipeDetailView(recipe: recipesData[0])
}
