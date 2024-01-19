//
//  CardSelectionVC.swift
//  Card Workout
//
//  Created by Ilya Paddubny on 18.01.2024.
//

import UIKit

class CardSelectionVC: UIViewController {

    @IBOutlet var cardImageView: UIImageView!
    var timer: Timer!
    var cards: [UIImage?] = Card.allValues
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        timer.invalidate()
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomeCardImage), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomeCardImage() {
        cardImageView.image = cards.randomElement() ?? UIImage(named: "AC ")
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        timer.invalidate()
    }
    
    @IBAction func rulesButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        timer.invalidate()
        startTimer()
    }

}
