//
//  ExerciseView.swift
//  HIITFit
//
//  Created by Jazzband on 31.05.2023.
//

import SwiftUI
import AVKit

struct ExerciseView: View {

    var startButoon: some View {
        Button("Start Exercise") {
        }
    }
    var doneButton: some View {
        Button("Done") {
            selectedTab = lastExercise ? 9 : selectedTab + 1
        }
    }
    var exercise: Exercise {
        Exercise.exercises[index]
    }
    var lastExercise: Bool {
        index + 1 == Exercise.exercises.count
    }
    @Binding var selectedTab: Int
    let index: Int
    let timer: TimeInterval = 30


    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(selectedTab: $selectedTab, textTitle: Exercise.exercises[index].exerciseName)
                    .padding(.bottom)
                VideoPlayerView(videoName: exercise.videoExercise)
                Text(Date().addingTimeInterval(timer), style: .timer)
                    .font(.system(size: geometry.size.height * 0.07))
                HStack(spacing: 150) {
                    startButoon
                    doneButton
                }
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
        ExerciseView(selectedTab: .constant(1), index: 1)

    }
}


