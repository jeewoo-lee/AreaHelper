import UIKit
import AVFoundation

class MainViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        speak(message: "Hi, Welcome to Area Helper")
        
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
