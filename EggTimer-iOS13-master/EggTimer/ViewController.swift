import UIKit

class ViewController: UIViewController {
    
    let eggtimes: [String : Int] = [
        "Soft" : 5,
        "Medium": 7,
        "Hard": 12
    ]
    
    var totalTime = 0
    var secondsPassed = 0
    
    var timer = Timer()
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        totalTime = 0
        secondsPassed = 0
        progressBar.progress = 0
        titleLabel.text! = "How Do You Like Your Eggs?"
        timer.invalidate()
        
        
        let hardness = sender.currentTitle!
        totalTime = eggtimes[hardness]!
        
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(upDateTimer), userInfo: nil, repeats: true )
        
    }
    
    @objc func upDateTimer() {
        if secondsPassed < totalTime {
            let percentageProgress = Float(secondsPassed) / Float(totalTime)
            progressBar.progress = Float(percentageProgress)
            secondsPassed += 1
        } else {
            timer.invalidate()
            progressBar.progress = 1
            titleLabel.text! += "\n Done 🍳"
        }
    }
}

