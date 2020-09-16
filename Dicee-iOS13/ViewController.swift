//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // we used the Image literal to change the image of the dice when our viewloads
        // after the equal sign just type image literal and you will see a small thing to click on and you can select
        // the new image you want to pick 
        //diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        //diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
    }

    @IBAction func rollButtonTapped(_ sender: UIButton) {
        
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
 
    
        /*
        did this if block on my own to see how to best error handel
         the number increase for the dice app
         this block will kepp the app from crashing if uncommented
         
         note that this was done at the start of the app to test the app would change
         the image for the dice when the push was done.
        */
//        if leftDiceNumber == 6 {
//            leftDiceNumber = 0
//        }
    }
    
}

