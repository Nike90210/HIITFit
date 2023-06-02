//
//  ContentView.swift
//  HIITFit
//
//  Created by Jazzband on 29.05.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {

            WelcomeView()
            ForEach( 0..<4 ) { number in
                ExerciseView(index: number)
            }

        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
