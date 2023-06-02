//
//  ExerciseView.swift
//  HIITFit
//
//  Created by Jazzband on 31.05.2023.
//

import SwiftUI

struct ExerciseView: View {

    let index: Int
    let videoNames = ["Berpi", "PullUP", "PushUP", "Squat"]
    let exerciseNames = ["Berpi", "PullUP", "PushUP", "Squat"]


    var body: some View {
        Text(exerciseNames[index])
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(index: 0)
    }
}
