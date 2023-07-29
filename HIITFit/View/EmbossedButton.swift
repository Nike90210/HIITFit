//
//  EmbossedButton.swift
//  HIITFit
//
//  Created by Jazzband on 24.07.2023.
//

import SwiftUI

enum EmbossedButtonShape {
    case round, capsule
}

struct EmbossedButtonStyle: ButtonStyle {
    var buttonShape = EmbossedButtonShape.capsule

    func makeBody(configuration: Configuration) -> some View {
        let shadow = Color(.lightGray)
        let highlight = Color(.secondarySystemBackground)
        return configuration.label
            .padding(10)
            .background(
                GeometryReader { geometry in
                    shape(size: geometry.size)
                        .foregroundColor(Color(.secondarySystemBackground))
                        .shadow(color: shadow, radius: 1, x: 2, y: 2)
                        .shadow(color: highlight, radius: 1, x: -2, y: -2)
                        .offset(x: -1, y: -1)
                })
    }

    @ViewBuilder
    func shape(size: CGSize) -> some View {
        switch buttonShape {
        case.round:
            Circle()
                .stroke(Color(.lightText), lineWidth: 2)
                .frame(
                    width: max(size.width, size.height),
                    height: max(size.width, size.height))
                .offset(x: -1)
                .offset(y: -max(size.width, size.height) / 2 +
                        min(size.width, size.height) / 2 )
        case.capsule:
            Capsule()
                .stroke(Color(.lightText), lineWidth: 2)
        }
    }
}

struct EmbossedButton_Previews: PreviewProvider {
    static var previews: some View {
        Button("History"){}
            .fontWeight(.bold)
            .buttonStyle(EmbossedButtonStyle(buttonShape: .round))
            .padding(40)
            .previewLayout(.sizeThatFits)
    }
}