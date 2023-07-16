//
//  RatingView.swift
//  HIITFit
//
//  Created by Jazzband on 10.06.2023.
//

import SwiftUI

struct RatingView: View {
    @AppStorage("ratings") private var ratings = ""
    @State private var rating = 0
    let maximumRating = 5
    let exerciseIndex: Int

    let onColor = Color.red
    let offColor = Color.gray

    init( exerciseIndex: Int) {

        self.exerciseIndex = exerciseIndex
        let desiredLength = Exercise.exercises.count
        if ratings.count < desiredLength {
            ratings = ratings.padding(
                toLength: desiredLength,
                withPad: "0",
                startingAt: 0)
        }
    }

    fileprivate func convertRating() {
        let index = ratings.index(
            ratings.startIndex,
            offsetBy: exerciseIndex)
        let character = ratings[index]
        rating = character.wholeNumberValue ?? 0
    }

    var body: some View {
        HStack {
            ForEach(1 ..< maximumRating + 1, id: \.self) { index in
                Image(systemName: "waveform.path.ecg")
                    .onChange(of: ratings){ _ in
                        convertRating()
                    }
                    .foregroundColor(
                        index > rating ? offColor : onColor)
                    .onTapGesture {
                        updateRating(index: index)

                    }
            }
        }
        .font(.largeTitle)
        .onAppear {
            convertRating()
        }
    }

    func updateRating(index: Int){
        rating = index
        let index = ratings.index(
            ratings.startIndex,
            offsetBy: exerciseIndex)
        ratings.replaceSubrange(index...index, with: String(rating))
    }
}

struct RatingView_Previews: PreviewProvider {
    // Optional UserDefalt для Preview
    @AppStorage("ratings") static var ratings: String?
    static var previews: some View {
        // что бы удалить ключ UserDefalt с Preview нужно присвоить ему значение nil, а nil может быть только в Optional
        ratings = nil
        return RatingView(exerciseIndex: 0)
            .previewLayout(.sizeThatFits)
    }
}
