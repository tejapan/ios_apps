//
//  ViewController.swift
//  War
//
//  Created by Teja Panchagnula on 9/20/17.
//  Copyright © 2017 TejaPanchagnula. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightScore = 0
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    var leftScore = 0
    
    let cardNames = ["card2", "card3", "card4", "card5",
                     "card6", "card7", "card8", "card9",
                     "card10","jack", "queen", "king",
                     "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        // Randomize right number
        let rightNumber = Int(arc4random_uniform(13))
        
        // Set the right image
        rightImageView.image = UIImage(named: cardNames[rightNumber])
        
        // Randomize left number
        let leftNumber = Int(arc4random_uniform(13))
        
        // Set the left image
        leftImageView.image = UIImage(named: cardNames[leftNumber])
        
        // Compare the card numbers
        if leftNumber > rightNumber {
            // left card wins
            leftScore += 1
            
            // update the label
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber == rightNumber {
            // it's a tie
        }
        else {
            // right card wins
            rightScore += 1
            
            // update the label
            rightScoreLabel.text = String(rightScore)
        }
    }

}
