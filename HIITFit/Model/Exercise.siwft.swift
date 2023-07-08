//
//  Exercise.siwft.swift
//  HIITFit
//
//  Created by Jazzband on 05.06.2023.
//

import Foundation


struct Exercise {

    let videoName: String
    let exerciseName: String



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
    Exercise(videoName: ExerciseEnum.squat.rawValue, exerciseName: "Squat"),
    Exercise(videoName: ExerciseEnum.hipBiceps.rawValue, exerciseName: "Hip-biceps"),
    Exercise(videoName: ExerciseEnum.lunge.rawValue, exerciseName: "Lunge"),
    Exercise(videoName: ExerciseEnum.shoulders.rawValue, exerciseName: "Shoulders"),
    Exercise(videoName: ExerciseEnum.gluteUp.rawValue, exerciseName: "Glute-Up")
   ]
}
