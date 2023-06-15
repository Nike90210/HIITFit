//
//  VideoPlayerView.swift
//  HIITFit
//
//  Created by Jazzband on 11.06.2023.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var videoName: String
    
    var body: some View {
        if let url = Bundle.main.url(forResource: videoName, withExtension: "mp4") {
                    VideoPlayer(player: AVPlayer(url: url))
        } else {
            Text("Couldn't find \(videoName).mp4")
                .foregroundColor(.red)
        }
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(videoName: "Squat")
    }
}
