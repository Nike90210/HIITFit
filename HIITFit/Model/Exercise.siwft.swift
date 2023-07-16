//
//  Exercise.siwft.swift
//  HIITFit
//
//  Created by Jazzband on 05.06.2023.
//

import Foundation


struct Exercise {

    let exerciseName: String
    let videoName: String

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
    Exercise(exerciseName: ExerciseEnum.squat.rawValue, videoName: "Squat"),
    Exercise(exerciseName: ExerciseEnum.hipBiceps.rawValue, videoName: "Hip-biceps"),
    Exercise(exerciseName: ExerciseEnum.lunge.rawValue, videoName: "Lunge"),
    Exercise(exerciseName: ExerciseEnum.shoulders.rawValue, videoName: "Shoulders"),
    Exercise(exerciseName: ExerciseEnum.gluteUp.rawValue, videoName: "Glute-Up")
   ]
}
