//
//  RecipeModel.swift
//  Avocados
//
//  Created by Alex Maina on 26/09/2024.
//

import SwiftUI

struct Recipe: Identifiable {
    let id = UUID()
    let title: String
    let headline: String
    let image: String
    let rating: Int
    let serves: Int
    let preparation: Int
    let cooking: Int
    let instructions: [String]
    let ingredients: [String]
    
}
