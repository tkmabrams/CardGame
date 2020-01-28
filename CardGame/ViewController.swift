//
//  ViewController.swift
//  CardGame
//
//  Created by Taishe Kenya on 11/24/19.
//  Copyright © 2019 Taishe Kenya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var LeftImageView: UIImageView!
    
    @IBOutlet weak var RightImageView: UIImageView!
    
    
    @IBOutlet weak var LeftScoreLabel: UILabel!
    
    
    @IBOutlet weak var Rightscorelabel: UILabel!
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    
    @IBAction func dealTapped(_ sender: Any) {
        
        //randomize some numbers
        let leftnumber = Int.random(in: 2...14)
        let rightnumber = Int.random(in: 2...14)
    
        print("dealTapped")
        
        //Update the image views
        LeftImageView.image = UIImage(named: "card\(leftnumber)")
        RightImageView.image = UIImage(named: "card\(rightnumber)")
        
        //left side wins
        if leftnumber > rightnumber {
            leftScore += 1
            LeftScoreLabel.text = String(leftScore)
            
        }
        //right side wins
        else if leftnumber < rightnumber {
            rightScore += 1
            Rightscorelabel.text = String(rightScore)
            
        }
            //tie
        else {
            
        }
        
    }
    


}

