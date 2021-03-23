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
        let samplePage = NewPage(pageImage: "maskedCat", pageText: "Meow",  buttonTitles: ["yes", "no"]
        )
        loadPage(whatPage: samplePage)
    }
    func loadPage(whatPage: NewPage){
        pageImage.image = UIImage(named: whatPage.pageImage)
        pageText.text = whatPage.pageText
       
       //switch case if else if. if array.count hide all but 2, then update array
        if whatPage.buttonTitles.count == 1{
            buttonTwo.titleLabel?.text = ""
            buttonThree.titleLabel?.text = ""
            ButtonFour.titleLabel?.text = ""
            buttonOne.titleLabel?.text = whatPage.buttonTitles[0]
            
        } else if whatPage.buttonTitles.count == 2{
           // buttonTwo.isHidden = true
            buttonThree.titleLabel?.text = ""
            ButtonFour.titleLabel?.text = ""
            buttonOne.setTitle(whatPage.buttonTitles[0], for: .normal)
            buttonTwo.setTitle(whatPage.buttonTitles[1], for: .normal)
            //button.setTitle("Button Title", for: .normal)
    } 

}

}
