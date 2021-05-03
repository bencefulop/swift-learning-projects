import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!

    @IBOutlet weak var diceImageView2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        diceImageView2.image = #imageLiteral(resourceName: "DiceFour")
    }
    
}

