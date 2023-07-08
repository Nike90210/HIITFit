//
//  HistoryView.swift
//  HIITFit
//
//  Created by Jazzband on 13.06.2023.
//

import SwiftUI

struct HistoryView: View {

    @Binding var showHistory: Bool
    @EnvironmentObject var history: HistoryStore

    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button(action: {showHistory.toggle()}) {
                Image(systemName: "xmark.circle")
            }
            .font(.title)
            .padding()
            VStack {
                Text("History")
                    .font(.title)
                    .padding()
                Form {
                    ForEach (history.exerciseDays) { day in
                        Section(header:
                                    Text(dateToString(date: day.date))
                            .font(.headline)
                        ){
                            ForEach(day.exercises, id: \.self){exercise in
                                Text(exercise)
                            }
                        }
                    }
                }
            }
        }
    }

    func dateToString(date: Date) -> String {
        let dateFormatGet = DateFormatter()
        dateFormatGet.dateFormat = "MM d"
        return dateFormatGet.string(from: date)
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(showHistory: .constant(true))
            .environmentObject(HistoryStore())
    }
}
