//
//  WelcomeView.swift
//  HIITFit
//
//  Created by Jazzband on 31.05.2023.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var selectedTab: Int
    @State private var showHistory = false

    var body: some View {
        ZStack {
            VStack {
                HeaderView(selectedTab: $selectedTab, textTitle: "Welcome")
                Spacer()
                Button("History") {
                    showHistory.toggle()
                }
                .sheet(isPresented: $showHistory){
                    HistoryView(showHistory: $showHistory)
                }
                    .padding(.bottom)
            }
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Get fit")
                            .font(.largeTitle)
                        Text("with high intensity interval training")
                            .font(.headline)
                    }
                    Image("step-up")
                        .resizedToFill(width: 240, height: 240)
                        .clipShape(Circle())
                }
                Button(action: {selectedTab = 0}){
                    Text("Get started")
                    Image(systemName: "arrow.right.circle")
                }
                .font(.title2)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.gray, lineWidth: 2))
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(selectedTab: .constant(9))
    }
}
