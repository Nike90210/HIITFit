//
//  HistoryView.swift
//  HIITFit
//
//  Created by Jazzband on 13.06.2023.
//

import SwiftUI

struct HistoryView: View {

    let today = Date()
    let yesterday = Date().addingTimeInterval(-86400)

    let exercise1 = ["Berpi", "PullUp", "PushUP", "Squat"]
    let exercise2 = ["Berpi", "PullUp", "PushUP"]



    var body: some View {
        VStack {
            Text("History")
                .font(.title)
                .padding()
            Form {
                Section(header:
                            Text(today.formatted(as: .number))
                    .font(.headline) {
                    ForEach(exercise1, id: \.self){ exercise in
                        Text(exercise)
                    }
                }
                Section(header: Text(yesterday.formatted()).font(.headline)){
                    ForEach(exercise2, id: \.self){ exercise in
                        Text(exercise)
                    }
                }
            }
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
