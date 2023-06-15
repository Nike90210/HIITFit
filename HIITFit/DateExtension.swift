//
//  DateExtension.swift
//  HIITFit
//
//  Created by Jazzband on 13.06.2023.
//

import Foundation

class DateExtension {

    func formatted(as format: String) -> String {
      let dateFormatter = DateFormatter()
      dateFormatter.dateFormat = format
        return dateFormatter.string(from: .now)
    }


}
