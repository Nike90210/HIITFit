//
//  ExerciseView.swift
//  HIITFit
//
//  Created by Jazzband on 31.05.2023.
//

import SwiftUI
import AVKit

struct ExerciseView: View {
    @State private var showSuccess = false
    @State private var showHistory = false
    @State private var rating = 0
    @Binding var selectedTab: Int
    let index: Int
    let timer: TimeInterval = 30

    var exercise: Exercise {
        Exercise.exercises[index]
    }
    var lastExercise: Bool {
        index + 1 == Exercise.exercises.count
    }
    var startButoon: some View {
        Button("Start Exercise") {
        }
    }
    var doneButton: some View {
        Button("Done") {
            if lastExercise {
                showSuccess.toggle()
            }else {
                selectedTab += 1
            }
        }
        .sheet(isPresented: $showSuccess) {
            SuccessView(selcetedTab: $selectedTab)
        }
    }

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
                RatingView(rating: $rating)
                    .padding()
                Spacer()
                Button("History") {
                    showHistory.toggle()
                }
                .sheet(isPresented: $showHistory){
                    HistoryView(showHistory: $showHistory)
                }
                .font(.title)
                .padding(.bottom)
            }
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(selectedTab: .constant(3), index: 3)

    }
}


