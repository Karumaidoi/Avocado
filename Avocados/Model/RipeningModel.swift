//
//  RipeningModel.swift
//  Avocados
//
//  Created by Alex Maina on 27/09/2024.
//

import SwiftUI

struct Ripening: Identifiable {
    let id = UUID()
    let image: String
    let stage: String
    let title: String
    let description: String
    let ripeness: String
    let instruction: String
}
