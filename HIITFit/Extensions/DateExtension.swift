//
//  DateExtension.swift
//  HIITFit
//
//  Created by Jazzband on 07.07.2023.
//

import Foundation


extension Date {

    func formatted(as format: String ) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }

    var yearMonthDay: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyy MM dd"
        return dateFormatter.string(from: self)
    }

    func isSameDay(as day: Date) -> Bool {
        return self.yearMonthDay == day.yearMonthDay
    }

    var dayName: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }
}
