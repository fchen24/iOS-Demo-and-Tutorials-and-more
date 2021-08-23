//
//  AdViewController.swift
//  ViewLoadWithAd
//
//  Created by 陳飛 on 16/8/21.
//

import UIKit


// 1. First enter the ad view
// 2. Set timer to display ad view
// 3. OK, go to the main view
// 4. In the main view, display an encapsulated UI component
// 5. One more thing, when use a text field, keyboard do not cover it


class AdViewController: UIViewController {
    
    @IBOutlet weak var timerRemainingTime: UILabel!
    
    private var adDisplayLength = 5

    override func viewDidLoad() {
        super.viewDidLoad()
        
        timerRemainingTime.text = String("\(Int(adDisplayLength)) s")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Create a timer
        /// e.g. 1
//        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
//            if self.adDisplayLength > 0 {
//                print("\(self.adDisplayLength)")
//                self.adDisplayLength -= 1
//
//                self.timerRemainingTime.text = String("\(Int(self.adDisplayLength)) s")
//            }
//            else {
//                self.timerRemainingTime.text = ""
//                timer.invalidate()
//                print("Timer Stopped!")
//                self.performSegue(withIdentifier: "Show Main", sender: self)
//            }
//        }
        
        /// e.g. 2
        let timer = Timer.init(timeInterval: 1.0, repeats: true) { timer in
            if self.adDisplayLength > 0 {
                print("\(self.adDisplayLength)")
                self.adDisplayLength -= 1
                
                self.timerRemainingTime.text = String("\(Int(self.adDisplayLength)) s")
            }
            else {
                self.timerRemainingTime.text = ""
                timer.invalidate()
                print("Timer Stopped!")
                self.performSegue(withIdentifier: "Show Main", sender: self)
            }
        }
        RunLoop.main.add(timer, forMode: .common)
        
    }

}

