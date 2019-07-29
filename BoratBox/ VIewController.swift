//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var player: AVAudioPlayer!
    var selectedSoundFile: String = ""
    var soundArray: [String] = ["Bing Bong song loop","Jagshemash","my name borat", "My Sister is number 2 prostitute", "Where woman ranks", "Scared of chocolate face man", "Wow wow wee waa"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        selectedSoundFile = soundArray[(sender.tag-1)]
        
        print(selectedSoundFile)
        playSound()
    }
    
    func playSound(){
        let soundUrl = Bundle.main.url(forResource: selectedSoundFile, withExtension: "mp3")
        
        do {
            try player = AVAudioPlayer(contentsOf: soundUrl!)
        }
        catch {
            print(error.localizedDescription)
        }
        player.play()

    }
}

