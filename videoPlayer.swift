//
//  videoPlayer.swift
//  AILLEURS
//
//  Created by helenepetitjean on 27/03/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.
//

import SwiftUI
import AVKit

struct videoPlayer: View {
    let videoLocalNames = "G"
    var body: some View {
        VStack{
            player(videoName: videoLocalNames)
                .frame(height: UIScreen.main.bounds.height / 3)
            //Spacer()
        }
    }
}

struct videoPlayer_Previews: PreviewProvider {
    static var previews: some View {
        videoPlayer()
    }
}
struct player :UIViewControllerRepresentable{
    var videoName: String = "G"
    func makeUIViewController(context:UIViewControllerRepresentableContext<player>)-> AVPlayerViewController{
        let controller = AVPlayerViewController()
        let url = Bundle.main.path(forResource: videoName, ofType: "mp4")!
        let player1 = AVPlayer(url: URL(fileURLWithPath: url))
        controller.player = player1
        controller.showsPlaybackControls = false
        player1.play()
        player1.isMuted = true
        return controller
        
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context:UIViewControllerRepresentableContext<player>) {
        
    }
}

