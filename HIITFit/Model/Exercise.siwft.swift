//
//  Exercise.siwft.swift
//  HIITFit
//
//  Created by Jazzband on 05.06.2023.
//

import Foundation


struct Exercise {

    let exerciseName: String
    let videoExercise: String



    enum ExerciseEnum: String {
        case squat = "Squat"
        case pullUp = "PullUp"
        case pushUp = "PushUP"
        case berpi = "Berpi"
    }

}

extension Exercise {

   static let exercises = [
    Exercise(exerciseName: ExerciseEnum.squat.rawValue, videoExercise: "Squat"),
    Exercise(exerciseName: ExerciseEnum.pullUp.rawValue, videoExercise: "Berpi"),
    Exercise(exerciseName: ExerciseEnum.pushUp.rawValue, videoExercise: "PushUP"),
    Exercise(exerciseName: ExerciseEnum.pullUp.rawValue, videoExercise: "PullUp")
   ]
}
