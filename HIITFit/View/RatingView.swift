//
//  RatingView.swift
//  HIITFit
//
//  Created by Jazzband on 10.06.2023.
//

import SwiftUI

struct RatingView: View {
    @Binding var rating: Int
    let maxminimumRating = 5
    let onCollor = Color.red
    let offCollor = Color.gray

    var body: some View {
        HStack {
            ForEach(1 ..< maxminimumRating + 1, id: \.self) { index in
                Image(systemName: "waveform.path.ecg")
                    .foregroundColor(
                        index > rating ? offCollor : onCollor)
                    .onTapGesture {
                        rating = index
                    }
            }
        }
        .font(.largeTitle)
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: .constant(3))
            .previewLayout(.sizeThatFits)
    }
}
