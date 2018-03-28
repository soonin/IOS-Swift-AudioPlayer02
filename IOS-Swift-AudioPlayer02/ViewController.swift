//
//  ViewController.swift
//  IOS-Swift-AudioPlayer02
//
//  Created by Pooya Hatami on 2018-03-27.
//  Copyright © 2018 Pooya Hatami. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController , AVAudioPlayerDelegate {

    var player:AVAudioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()

        print("Starting Player App ..")
        do {
            
            guard let audioPlayer = Bundle.main.path(forResource: "SeeYouAgain", ofType: "mp3")
                else {
                    print("===> guard error :\n    file:\(#file)\n    line:\(#line)\n    function:\(#function) ")
                    return
            }
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPlayer) as URL)
            
        } catch {
            print(error)
        }
    
    }

    @IBAction func playBtn(_ sender: Any) {
        player.play()
    }
    
    
    @IBAction func pauseBtn(_ sender: Any) {
        player.pause()
    }
    
    
    @IBAction func stopBtn(_ sender: Any) {
        player.stop()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

