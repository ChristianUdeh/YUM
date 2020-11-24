import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        func playSound(soundName:String) {
            let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
            
            
              //  print("Start\(keyPressed(deadline = 0.2))")
            }
    
        
      
        playSound(soundName: sender.titleLabel!.text!)
        
        sender.alpha=0.5
        
        let seconds = 0.2
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            sender.alpha = 0.1
    
    }

}

}
