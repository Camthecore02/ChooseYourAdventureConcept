//
//  SecondViewController.swift
//  ChooseYourAdventureConcept
//
//  Created by James Jermann on 4/16/21.
//  Copyright © 2021 Cameron Smith & James Jermann. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var text:String = ""
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textLabel?.text = text
    }
    

    
}
