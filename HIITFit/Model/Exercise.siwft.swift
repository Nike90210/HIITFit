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
        case hipBiceps = "Hip-biceps"
        case lunge = "Lunge"
        case shoulders = "Shoulders"
        case gluteUp = "Glute-Up"
    }

}

extension Exercise {

   static let exercises = [
    Exercise(exerciseName: ExerciseEnum.squat.rawValue, videoExercise: "Squat"),
    Exercise(exerciseName: ExerciseEnum.hipBiceps.rawValue, videoExercise: "Hip-biceps"),
    Exercise(exerciseName: ExerciseEnum.lunge.rawValue, videoExercise: "Lunge"),
    Exercise(exerciseName: ExerciseEnum.shoulders.rawValue, videoExercise: "Shoulders"),
    Exercise(exerciseName: ExerciseEnum.gluteUp.rawValue, videoExercise: "Glute-Up")
   ]
}
