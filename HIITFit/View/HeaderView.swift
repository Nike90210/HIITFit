//
//  HeaderView.swift
//  HIITFit
//
//  Created by Jazzband on 05.06.2023.
//

import SwiftUI

struct HeaderView: View {
    
    let textTitle: String

    var body: some View {
        VStack {
            Text(textTitle)
                .font(.largeTitle)
            HStack {
                Image(systemName: "hand.wave")
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
                Image(systemName: "4.circle")
            }
            .font(.title2)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(textTitle: "Squat")
            .previewLayout(.sizeThatFits)
        
    }
}
