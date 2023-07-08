//
//  HistoryStoreDevData.swift
//  HIITFit
//
//  Created by Jazzband on 18.06.2023.
//

import Foundation

extension HistoryStore{

    func createDevDeta () {
        exerciseDays = [
            ExerciseDay(date: Date().addingTimeInterval(-86400),
                        exercises: [Exercise.exercises[0].videoName,
                                    Exercise.exercises[1].videoName,
                                    Exercise.exercises[2].videoName
                                   ]),
            ExerciseDay(date: Date().addingTimeInterval(-86400 * 2),
                        exercises: [
                            Exercise.exercises[0].videoName,
                            Exercise.exercises[1].videoName
                        ])
        ]
    }
}
