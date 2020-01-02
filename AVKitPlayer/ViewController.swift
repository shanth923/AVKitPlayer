//
//  ViewController.swift
//  AVKitPlayer
//
//  Created by R Shantha Kumar on 11/26/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation


class ViewController: UIViewController {

    var audioPlayer:AVAudioPlayer = AVAudioPlayer()
    
  
    
    
    
    @IBAction func action(_ sender: UIButton) {
    
    if let path = Bundle.main.path(forResource: "car", ofType: "mp4")
    
    {
        
        let video = AVPlayer(url: URL(fileURLWithPath: path))
        
        let videoPlayer = AVPlayerViewController()
        
        videoPlayer.player = video
        
        
        present(videoPlayer, animated: true) {
            video.play()
        }
        
        
        
        
        }
    
    
    
    
    
    
    }
    
    
    @IBAction func pause(_ sender: Any) {
        
        audioPlayer.pause()
        
    }
    
    @IBAction func paly(_ sender: Any) {
        
        audioPlayer.play()
        
    }
    
    @IBAction func replay(_ sender: Any) {
        
        audioPlayer.currentTime = 0
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        do{
            
            let path = Bundle.main.path(forResource: "BadBoy", ofType: "mp3")
            
            try audioPlayer =   AVAudioPlayer(contentsOf: URL(fileURLWithPath: path!))
         
            
        }catch{
            
            print("error")
        }
        
        
        
    }


}

