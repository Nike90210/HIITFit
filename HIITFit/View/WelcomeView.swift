//
//  WelcomeView.swift
//  HIITFit
//
//  Created by Jazzband on 31.05.2023.
//

import SwiftUI

struct WelcomeView: View {
    @State private var showHistory = false

    @Binding var selectedTab: Int

    var getStartedButton: some View {
        RaisedButton(buttonText: "Get started") {
            selectedTab = 0
        }
        .padding()
    }

    var historyButton: some View {
        Button (
            action: {
                showHistory = true
            }, label: {
                Text("History")
                    .fontWeight(.semibold)
                    .padding([.bottom, .trailing], 5)
            })
        .padding(.bottom, 10)
        .buttonStyle(EmbossedButtonStyle())
    }

    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(selectedTab: $selectedTab,
                           titleText: "Welcome")
                Spacer()
                ContainerView {
                    ViewThatFits {
                        VStack{
                            WelcomeView.images
                            WelcomeView.welcomeText
                            getStartedButton
                            Spacer()
                            historyButton
                        }
                        // Альтернативный запуск текста без изображения при случае, когда экран устройства маленький и картинки не влезает коректн
                        VStack {
                            WelcomeView.welcomeText
                            getStartedButton
                            Spacer()
                            historyButton
                        }
                    }
                }
                .frame(height: geometry.size.height * 0.8)
            }
            .sheet(isPresented: $showHistory){
                HistoryView(showHistory: $showHistory)
            }
        }


    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(selectedTab: .constant(9))
    }
}
