//
//  HeaderView.swift
//  Avocados
//
//  Created by Alex Maina on 25/09/2024.
//

import SwiftUI

struct HeaderView: View {
    @State private var showHeadline: Bool = false;
    
    var header: Header
    
    var slideAnimation: Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.8, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    
    var body: some View {
        ZStack {
            Image(header.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            HStack(alignment: .top, spacing: 0) {
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 4)
                
                VStack(alignment: .leading, spacing: 6) {
                    Text(header.subheadline)
                        .font(.system(.title, design: .serif))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .shadow(radius: 3)
                    
                    Text(header.subheadline)
                        .font(.footnote)
                        .foregroundColor(.white)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .shadow(radius: 3)
                    
                }
                .padding(.vertical, 0)
                .padding(.horizontal, 30)
                .frame(width: 281, height: 105)
                .background(Color("ColorBlackTransparentLight"))
            }
            
            .frame(width: 285, height: 105, alignment: .center)
            .offset(x: -36, y:showHeadline  ? 75 : 220)
            .animation(slideAnimation)
            .onAppear(perform: {
                self.showHeadline = true
            })
        }
        .frame(width: 480, height: 320, alignment: .center)
        
    }
}

#Preview {
    HeaderView(header: headerData[1])
        .previewLayout(.sizeThatFits)
}
