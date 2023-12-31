//
//  ContentView.swift
//  HIITFit
//
//  Created by Jazzband on 29.05.2023.
//

import SwiftUI
struct ContentView: View {

    @State private var selectedTab = 9

    var body: some View {
        
        TabView(selection: $selectedTab) {
            WelcomeView(selectedTab: $selectedTab)
                .tag(9)
            ForEach(Exercise.exercises.indices, id: \.self) { index in
                ExerciseView(selectedTab: $selectedTab, index: index)
                    .tag(index)
            }
        }
        .environmentObject(HistoryStore())
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
