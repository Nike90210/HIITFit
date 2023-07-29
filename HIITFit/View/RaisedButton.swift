//
//  RaisedButton.swift
//  HIITFit
//
//  Created by Jazzband on 22.07.2023.
//

import SwiftUI

//- 1
struct RaisedButton: View {
  let buttonText: String
  let action: () -> Void

  var body: some View {
    Button(action: {
      action()
    }, label: {
      Text(buttonText)
        .raisedButtonTextStyle()
    })
    .buttonStyle(.raised)
  }
}
//- 4
extension ButtonStyle where Self == RaisedButtonStyle {
  static var raised: RaisedButtonStyle {
    .init()
  }
}
//- 3
struct RaisedButtonStyle: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
          .frame(maxWidth: .infinity)
          .padding([.top, .bottom], 12)
          .background(Capsule()
          .foregroundColor(Color(.systemBackground))
          .shadow(color: Color(.lightGray), radius: 4, x: 6, y: 6)
          .shadow(color: Color(.secondarySystemBackground), radius: 4, x: -6, y: -6))
  }
}
//- 2
extension Text {
  func raisedButtonTextStyle() -> some View {
    self
    .font(.body)
    .fontWeight(.bold)
  }
}
//- 5
struct RaisedButton_Previews: PreviewProvider {
  static var previews: some View {
    ZStack {
      RaisedButton(buttonText: "Get Started") {
        print("Hello World")
      }
      .buttonStyle(.raised)
      .padding(20)
    }
    .background(Color(.lightText))
    .previewLayout(.sizeThatFits)
  }
}

