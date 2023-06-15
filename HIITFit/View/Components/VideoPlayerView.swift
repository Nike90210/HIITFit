//
//  VideoPlayerView.swift
//  HIITFit
//
//  Created by Jazzband on 10.06.2023.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {

    var exercise: Exercise {
        Exercise.exercises[index]
    }

    let index: Int
    var videoName: String = ""


    var body: some View {
        
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(index: 0)
    }
}
