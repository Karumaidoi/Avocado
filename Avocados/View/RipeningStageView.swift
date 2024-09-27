//
//  RipeningStageView.swift
//  Avocados
//
//  Created by Alex Maina on 25/09/2024.
//

import SwiftUI

struct RipeningStageView: View {
    let ripenings: [Ripening] = ripeningData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripenings) { item in
                        RipeningView(ripening: item)
                    }
                }
            }
            
        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    RipeningStageView()
}
