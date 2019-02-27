//
//  ViewController.swift
//  Xylophone

import UIKit
import AVFoundation

class ViewController: UIViewController,AVAudioPlayerDelegate{
    
    var audioPlayer:AVAudioPlayer!
    let soundArray = ["note1","note2","note3","note4","note5","note6","note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
     
        playSound(typeOFSound: soundArray[sender.tag-1])
       
    }
    
    func playSound(typeOFSound:String) {
        
        let SoundURL = Bundle.main.url(forResource:typeOFSound, withExtension: "wav")!
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: SoundURL)
            
        } catch {
            print(error)
        }
        audioPlayer.play()
    }

}

