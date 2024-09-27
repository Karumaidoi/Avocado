//
//  FactsView.swift
//  Avocados
//
//  Created by Alex Maina on 26/09/2024.
//

import SwiftUI

struct FactsView: View {
    var fact: Fact
    
    var body: some View {
        ZStack {
            Text(fact.content)
                .padding(.leading, 55)
                .padding(.trailing, 10)
                .padding(.vertical, 3)
                .frame(width: 300, height: 135, alignment: .center)
                .background(LinearGradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")], startPoint: .leading, endPoint: UnitPoint.trailing))
                .cornerRadius(12)
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .foregroundColor(.white)
                .font(.footnote)
            
            Image(fact.image)
                .resizable()
                .frame(width: 66, height: 66, alignment: .center)
                .clipShape(.circle)
                .background(
                    Circle()
                        .fill(Color.white)
                        .frame(width: 74, height: 74, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(LinearGradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")], startPoint: .leading, endPoint: .trailing))
                        .frame(width: 82, height: 82)
                )
                .background(
                    Circle()
                        .fill(Color("ColorAppearanceAdaptive"))
                        .frame(width: 90, height: 90, alignment: .center)
                )
                .offset(x: -150)
        }
            
    }
}

#Preview {
    FactsView(fact: factData[0])
}
