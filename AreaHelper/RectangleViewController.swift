//
//  RectangleViewController.swift
//  AreaHelper
//
//  Created by Lee, Jeewoo on 2019-10-17.
//  Copyright © 2019 Lee, Jeewoo. All rights reserved.
//

import UIKit
import AVFoundation

class RectangleViewController: UIViewController {
    
    @IBOutlet weak var length: UITextField!
    @IBOutlet weak var width: UITextField!
    
    @IBOutlet weak var labelResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        speak(message: "Enter length and width")
    }
    
    
    @IBAction func areaOfRectangle(_ sender: Any) {
        guard let givenLength = length.text, givenLength != ""  else {
            speak(message: "Bro, enter the value")
            return
        }
        guard let givenWidth = width.text, givenWidth != ""  else {
            speak(message: "Bro, enter the value")
            return
        }
        
        guard let actualLength = Double(givenLength) else {
            speak(message: "Hey, enter the number")
            return
        }
        guard let actualWidth = Double(givenWidth) else {
            speak(message: "Hey, enter the number")
            return
        }
        
        labelResult.text = String(actualLength * actualWidth)
        
        
        
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
