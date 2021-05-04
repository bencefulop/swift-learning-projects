import UIKit
import AVFoundation


class ViewController: UIViewController {
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func cKeyPressed(_ sender: UIButton) {
        playSound(note: "C")
    }
    
    @IBAction func dKeyPressed(_ sender: UIButton) {
        playSound(note: "D")
    }
    
    
    
    @IBAction func eKeyPressed(_ sender: UIButton) {
        playSound(note: "E")
    }
    
    @IBAction func fKeyPressed(_ sender: UIButton) {
        playSound(note: "F")
    }
    
    
    @IBAction func gKeyPressed(_ sender: UIButton) {
        playSound(note: "G")
    }
    
    @IBAction func aKeyPressed(_ sender: UIButton) {
        playSound(note: "A")
    }
    
    @IBAction func bKeyPressed(_ sender: UIButton) {
        playSound(note: "B")
    }
    
    func playSound(note: String) {
        guard let url = Bundle.main.url(forResource: note, withExtension: "wav") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)
            
            guard let player = player else { return }
            
            player.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
}

