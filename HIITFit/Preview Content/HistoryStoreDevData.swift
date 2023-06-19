//
//  HistoryStoreDevData.swift
//  HIITFit
//
//  Created by Jazzband on 18.06.2023.
//

import Foundation

extension HistoryStore{

    mutating func createDevDeta () {
        exreciseDays = [
            ExerciseDay(date: Date().addingTimeInterval(-86400),
                        exercise: [Exercise.exercises[0].exerciseName,
                                   Exercise.exercises[1].exerciseName,
                                   Exercise.exercises[2].exerciseName
                                  ]),
            ExerciseDay(date: Date().addingTimeInterval(-86400 * 2),
                        exercise: [
                            Exercise.exercises[0].exerciseName,
                            Exercise.exercises[1].exerciseName
                        ])
        ]
    }
}
