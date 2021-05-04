import UIKit

class ViewController: UIViewController {
    
    let eggtimes: [String : Int] = [
        "Soft" : 5,
        "Medium": 7,
        "Hard": 12
    ]
    
    var secondsRemaining: Int!
    
    var timer = Timer()
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func hardmessSelected(_ sender: UIButton) {
        titleLabel.text! = "How Do You Like Your Eggs?"
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        secondsRemaining = eggtimes[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(upDateTimer), userInfo: nil, repeats: true )
   
    }
    
    @objc func upDateTimer() {
        if secondsRemaining > 0 {
            print("\(secondsRemaining!) seconds")
            secondsRemaining -= 1
        } else {
            timer.invalidate()
            titleLabel.text! += "\n Done 🍳"
        }
    }
}

