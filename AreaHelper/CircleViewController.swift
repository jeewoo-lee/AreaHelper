//
//  ViewController.swift
//  AreaHelper
//
//  Created by Lee, Jeewoo on 2019-10-16.
//  Copyright © 2019 Lee, Jeewoo. All rights reserved.
//

import UIKit
import AVFoundation

class CircleViewController: UIViewController {
    
    @IBOutlet weak var radius: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    
    @IBAction func areaOfCircle(_ sender: Any) {
        guard let givenRadius = radius.text, givenRadius != "" else {
            speak(message: "Bro, enter the value")
            return
        }
        
        guard let actualRadius = Double(givenRadius) else {
            speak(message: "Hey, enter the number")
            return
        }
        
        labelResult.text = String(pow(actualRadius, 2) * Double.pi)
        
        
        
    }
    
    
    func speak(message: String) {
        //Make an object named 'synthesizer' which is an instance of the
        //class AVSpeechSynthesizer
        let synthesizer = AVSpeechSynthesizer()
        
        
        
        //Make an object named 'utterance', which is an instance of the class
        //AVSpeechSynthesizer
        let utterance = AVSpeechUtterance(string: message)
        
        //Speak the message
        synthesizer.speak(utterance)
        
        print(message)
    }
}
    
    


