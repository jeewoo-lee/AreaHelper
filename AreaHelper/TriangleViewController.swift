//
//  TriangleViewController.swift
//  AreaHelper
//
//  Created by Lee, Jeewoo on 2019-10-17.
//  Copyright © 2019 Lee, Jeewoo. All rights reserved.
//

import UIKit
import AVFoundation

class TriangleViewController: UIViewController {
    
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var width: UITextField!
    
    @IBOutlet weak var labelResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        speak(message: "Enter height and width")
    }
    
    
    @IBAction func areaOfTriangle(_ sender: Any) {
        guard let givenHeight = height.text, givenHeight != ""  else {
            speak(message: "Bro, enter the value")
            return
        }
        guard let givenWidth = width.text, givenWidth != ""  else {
            speak(message: "Bro, enter the value")
            return
        }
        
        guard let actualHeight = Double(givenHeight) else {
            speak(message: "Hey, enter the number")
            return
        }
        guard let actualWidth = Double(givenWidth) else {
            speak(message: "Hey, enter the number")
            return
        }
        
        labelResult.text = String(0.5 * actualHeight * actualWidth)
        
        
        
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
