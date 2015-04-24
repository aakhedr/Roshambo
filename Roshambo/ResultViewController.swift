//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Ahmed Khedr on 4/23/15.
//  Copyright (c) 2015 Ahmed Khedr. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var userChoice: Shape!
    private let opponentChoice: Shape = Shape.randomShape()
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        displayResult()
    }
    
    private func displayResult() {
        var imageName: String
        var text: String

        let match = "\(self.userChoice.rawValue) Vs. \(self.opponentChoice.rawValue)"

        switch (userChoice!, opponentChoice) {
        case (.Rock, .Rock), (.Paper, .Paper), (.Scissors, .Scissors):
            imageName = "tie"
            text = "It's a tie with \(match)"
        case (.Rock, .Scissors), (.Paper, .Rock), (.Scissors, .Paper):
            imageName = "\(userChoice.rawValue) - \(opponentChoice.rawValue)"
            text = "You win with \(match)"
        default:
            imageName = "\(opponentChoice.rawValue) - \(userChoice.rawValue)"
            text = "You lose with \(match) :("
        }
        imageName = imageName.lowercaseString
        self.resultImage.image = UIImage(named: imageName)
        self.resultLabel.text = text
    }
    
    
    @IBAction func playAgain(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}












