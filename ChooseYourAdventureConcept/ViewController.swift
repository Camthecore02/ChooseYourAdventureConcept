//
//  ViewController.swift
//  ChooseYourAdventureConcept
//
//  Created by Cameron Smith & James Jermann on 3/23/21.
//  Copyright © 2021 Cameron Smith & James Jermann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var pageImage: UIImageView!
    @IBOutlet weak var pageText: UITextView!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!

    @IBOutlet weak var buttonFour: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
        

        
}
    @IBAction func choice1(_ sender: UIButton) {
        pageImage.image = UIImage(named: "good")
        pageText.text = "You've made the ethically good desicion"
      buttonOne.isHidden = true
         buttonTwo.isHidden = true
         buttonThree.isHidden = true
    }
    
    @IBAction func choice2(_ sender: Any) {
     pageImage.image = UIImage(named: "bad")
        pageText.text = "You've made the ethically bad desicion"
        buttonOne.isHidden = true
        buttonTwo.isHidden = true
        buttonThree.isHidden = true
    }
    
    @IBAction func choice3(_ sender: Any) {
        pageImage.image = UIImage(named: "neutral")
        pageText.text = "You've made the ethically neutral desicion"
        buttonOne.isHidden = true
        buttonTwo.isHidden = true
        buttonThree.isHidden = true
    }
    
    
    @IBAction func nextButton(_ sender: Any) {
        buttonOne.isHidden = false
        buttonTwo.isHidden = false
        buttonThree.isHidden = false
    }
    
}

