//
//  HistoryStore.swift
//  HIITFit
//
//  Created by Jazzband on 14.06.2023.
//

import Foundation


struct ExerciseDay: Identifiable {

    let id = UUID()
    let date: Date
    var exercise: [String] = []
}


struct HistoryStore {
    var exreciseDays: [ExerciseDay] = []
}
