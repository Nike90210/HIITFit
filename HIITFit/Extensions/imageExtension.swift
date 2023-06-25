//
//  imageExtension.swift
//  HIITFit
//
//  Created by Jazzband on 22.06.2023.
//

import Foundation
import SwiftUI


extension Image {

    func resizedToFill(width: CGFloat, height: CGFloat ) -> some View {
        return self

            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: width, height: height)
    }
}
