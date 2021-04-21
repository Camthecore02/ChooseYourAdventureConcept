//
//  ViewController.swift
//  ChooseYourAdventureConcept
//
//  Created by Cameron Smith & James Jermann on 3/23/21.
//  Copyright © 2021 Cameron Smith & James Jermann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var option1 = false
    var option2 = false
    var option3 = false
    @IBOutlet weak var pageImage: UIImageView!
    @IBOutlet weak var pageText: UITextView!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var ButtonFour: UIButton!
    
   // var currentPage: NewPage = samplePage
   
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
        

        
}
    @IBAction func choice1(_ sender: UIButton) {
        option1 = true
        option2 = false
        option3 = false
          desision()
        
      
    }
    
    @IBAction func choice2(_ sender: Any) {
        option2 = true
        option3 = false
        option1 = false
          desision()
    }
    
    @IBAction func choice3(_ sender: Any) {
        option3 = true
        option1 = false
        option2 = false
          desision()
    }
    func desision(){
        if option1 == true {
            pageText.text = "Good Choice"
        } else if option2 == true {
            pageText.text = "Bad Choice"
        }  else if option3 == true{
            pageText.text = "Neutral"
        } else {
            pageText.text = "No"
        }
    }
}

