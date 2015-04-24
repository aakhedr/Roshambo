//
//  ViewController.swift
//  Roshambo
//
//  Created by Ahmed Khedr on 4/23/15.
//  Copyright (c) 2015 Ahmed Khedr. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController {

    // All Code
    @IBAction func playRock(sender: UIButton) {
        
        // Get the next view controller
        let nextController = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
        
        // Set its properties here
        nextController.userChoice = self.getUserShape(sender)

        // Present the next view controller
        self.presentViewController(nextController, animated: true, completion: nil)
    }
    
    // Code and segue
    @IBAction func playPaper(sender: UIButton) {
        performSegueWithIdentifier("play", sender: sender)
    }
    
    // Segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "play" {
            // Get the next view controller from segue
            let nextController = segue.destinationViewController as! ResultViewController
            
            // Set its properties here
            nextController.userChoice = self.getUserShape(sender as! UIButton)
        }
    }
    
    private func getUserShape(sender: UIButton) -> Shape {

        // Get the title of the sender button
        let shape = sender.titleForState(UIControlState.Normal)!

        // Return hte user choice as Shape object
        return Shape(rawValue: shape)!
    }
}