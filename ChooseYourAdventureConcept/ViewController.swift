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
    @IBOutlet weak var ButtonFour: UIButton!
    
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let samplePage = NewPage(pageImage: "maskedCat", pageText: "Meow" //buttonOne: "Pet", buttonTwo: "Ignore", buttonThree: "Steal Mask", buttonFour: "Pick Up"
        )
        loadPage(whatPage: samplePage)
    }
    func loadPage(whatPage: NewPage){
        pageImage.image = UIImage(named: whatPage.pageImage)
        pageText.text = whatPage.pageText
        
       
    }

}

