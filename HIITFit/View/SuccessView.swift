//
//  SuccessView.swift
//  HIITFit
//
//  Created by Jazzband on 24.06.2023.
//

import SwiftUI

struct SuccessView: View {

    let succesMassage = """
                        Good job comletion all four exercises!
                        Remember tomorrow's' another day!
                        So eat well and get some rest.
                        """
    var body: some View {
        ZStack {
            VStack(){
                Image(systemName: "hand.raised.fill")
                    .resizedToFill(width: 75, height: 75)
                    .foregroundColor(.purple)
                Text("High Five!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text(succesMassage)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
            }
            VStack{
                Spacer()
                ZStack(alignment: .bottom){
                    Button("Continue") {
                    }
                    .padding()
                }
            }
        }
    }
}


struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView()
    }
}
