//
//  ExerciseView.swift
//  HIITFit
//
//  Created by Jazzband on 31.05.2023.
//

import SwiftUI
import AVKit

struct ExerciseView: View {

    var exercise: Exercise {
        Exercise.exercises[index]
    }

    let index: Int
    let timer: TimeInterval = 30

    var body: some View {

        GeometryReader { geometry in
            VStack {
                HeaderView(exerciseName: exercise.exerciseName)
                    .padding(.bottom)
                VideoPlayerView(videoName: exercise.videoExercise)
                Text(Date().addingTimeInterval(timer), style: .timer)
                    .font(.system(size: geometry.size.height * 0.07))
                Button("Start/Done") {}
                    .font(.title3)
                    .padding()
                RatingView()
                    .padding()
                Spacer()
                Button("History") {}
                    .padding(.bottom)
            }
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(index: 0)

    }
}


