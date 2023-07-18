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
    var exercises: [String] = []
}

class HistoryStore: ObservableObject {
    @Published var exerciseDays: [ExerciseDay] = []
    @Published var loadingError = false

    var dataURL: URL {
        URL.documentsDirectory
            .appendingPathComponent("History.plist")
    }

    init() {
#if DEBUG
        //createDevData()
#endif
        do {
            try load()
        }catch {
            loadingError = true
        }
    }

    func addDoneExercise(_ exerciseName: String) {
        let today = Date()
        if let firstDay =  exerciseDays.first?.date, today.isSameDay(as: firstDay) {
            exerciseDays[0].exercises.append(exerciseName)
        } else {
            exerciseDays.insert(
                ExerciseDay(date: today, exercises: [exerciseName]),
                at: 0)
        }
        do {
            try save()
        }catch {
            fatalError(error.localizedDescription)
        }
    }

    func load() throws {
        guard let data = try? Data(contentsOf: dataURL) else {return}
        do {
            let plistData = try PropertyListSerialization.propertyList(from: data,
                                                                       options: [],
                                                                       format: nil)

            let convertedPlistData = plistData as? [[Any]] ?? []

            exerciseDays = convertedPlistData.map {
                ExerciseDay(
                    date: $0[1] as? Date ?? Date(),
                    exercises: $0[2] as? [String] ?? [])
            }
        }catch {
            FileError.loadFailure
        }
    }

    func save() throws {
        let plistDate = exerciseDays.map() {
            [$0.id.uuidString, $0.date, $0.exercises]
        }
        do {
            let date = try PropertyListSerialization.data(
                fromPropertyList: plistDate,
                format: .binary,
                options: .zero)
            try date.write(to: dataURL, options: .atomic )
        }catch {
            throw  FileError.saveFilure
        }
    }
}

enum FileError: Error {
    case loadFailure
    case saveFilure
}

