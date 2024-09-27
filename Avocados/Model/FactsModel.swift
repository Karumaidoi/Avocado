//
//  FactsModel.swift
//  Avocados
//
//  Created by Alex Maina on 26/09/2024.
//

import SwiftUI

struct Fact: Identifiable {
    let id = UUID()
    let image: String
    let content: String
}
