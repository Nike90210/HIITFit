//
//  ContainerView.swift
//  HIITFit
//
//  Created by Jazzband on 25.07.2023.
//

import SwiftUI

struct ContainerView<Content: View>: View {
    var content: Content

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(Color(.secondarySystemBackground))
            VStack {
                Spacer()
                Rectangle()
                    .frame(height: 30)
                    .foregroundColor(Color(.lightText))
            }
            content
        }
    }

    init(@ViewBuilder content: () -> Content){
        self.content = content()
    }
}


struct ContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView {
            VStack {
                RaisedButton(buttonText: "Hello world") {}
                    .padding(50)
                Button("tap me"){}
                    .buttonStyle(EmbossedButtonStyle(buttonShape: .round))
            }
        }
        .padding(50)
        .previewLayout(.sizeThatFits)
    }
}
