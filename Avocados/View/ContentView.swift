//
//  ContentView.swift
//  Avocados
//
//  Created by Alex Maina on 25/09/2024.
//

import SwiftUI

struct ContentView: View {
    var headers: [Header] = headerData
    var facts: [Fact] = factData
    var recipes: [Recipe] = recipesData
    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(alignment: .center, spacing: 20) {
                //Header
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }
                }
                
                // DISHES VIEW
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(FontModifier())
                
                DishesView()
                    .frame(maxWidth: 640)
                
                // AVACADO FACTS
                Text("Avacado Facts")
                    .fontWeight(.bold)
                    .modifier(FontModifier())
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 60) {
                        ForEach(facts) { item in
                            FactsView(fact: item)
                        }
                    }
                }
                .padding(.vertical)
                .padding(.leading, 30)
                .padding(.trailing, 20)
                
                
                // RECIPES CARD
                Text("Avocado Recipes")
                    .fontWeight(.bold)
                    .modifier(FontModifier())
                
                VStack(alignment: .center, spacing: 20) {
                    ForEach(recipes) { recipe in
                        RecipesViewCard(recipe: recipe)
                    }
                }
                .frame(maxWidth: 640)
                .padding(.horizontal, 20)
                
            
                //: FOOTER
                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .fontWeight(.bold)
                        .modifier(FontModifier())
                        
                    
                    Text("Everything you need to know about \n Avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }
            
        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct FontModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}

#Preview {
    ContentView(headers: headerData, facts: factData, recipes: recipesData)
}
