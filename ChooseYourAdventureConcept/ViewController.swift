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
    
    var text: String = ""
    let vc = SecondViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
        
//       //  let samplePage = NewPage(pageImage: "maskedCat", pageText: "Meow",  buttonTitles: ["yes", "no"], buttonLinks: [yesPage, noPage])
//
////            let yesPage = NewPage(pageImage: "maskedCat", pageText: "Yes Page", buttonTitles: ["Back to Sample"], buttonLinks: [samplePage])
////        let noPage = NewPage(pageImage: "maskedCat", pageText: "No Page", buttonTitles: ["Back to Sample"], buttonLinks: samplePage)
//
//
//
//        loadPage(whatPage: yesPage)
//
//    }
//    func loadPage(whatPage: NewPage){ //NewPage
//
//        currentPage = whatPage
//        pageImage.image = UIImage(named: currentPage.pageImage)
//        pageText.text = currentPage.pageText
//
//       //switch case if else if. if array.count hide all but 2, then update array
//        if currentPage.buttonTitles.count == 1{
//            buttonTwo.titleLabel?.text = ""
//            buttonThree.titleLabel?.text = ""
//            ButtonFour.titleLabel?.text = ""
//            buttonOne.titleLabel?.text = currentPage.buttonTitles[0]
//
//        } else if whatPage.buttonTitles.count == 2{
//           // buttonTwo.isHidden = true
//            buttonThree.titleLabel?.text = ""
//            ButtonFour.titleLabel?.text = ""
//            buttonOne.setTitle(currentPage.buttonTitles[0], for: .normal)
//            buttonTwo.setTitle(currentPage.buttonTitles[1], for: .normal)
//            //button.setTitle("Button Title", for: .normal)
//        } else if currentPage.buttonTitles.count == 3{
//            // buttonTwo.isHidden = true
//            buttonThree.setTitle(currentPage.buttonTitles[2], for: .normal)
//            ButtonFour.titleLabel?.text = ""
//            buttonOne.setTitle(currentPage.buttonTitles[0], for: .normal)
//            buttonTwo.setTitle(currentPage.buttonTitles[1], for: .normal)
//        } else if whatPage.buttonTitles.count == 4{
//            // buttonTwo.isHidden = true
//            buttonThree.setTitle(currentPage.buttonTitles[2], for: .normal)
//            ButtonFour.setTitle(currentPage.buttonTitles[3], for: .normal)
//            buttonOne.setTitle(currentPage.buttonTitles[0], for: .normal)
//            buttonTwo.setTitle(currentPage.buttonTitles[1], for: .normal)
//        } else {
//            buttonTwo.titleLabel?.text = ""
//            buttonThree.titleLabel?.text = ""
//            ButtonFour.titleLabel?.text = ""
//            buttonOne.titleLabel?.text = ""
//        }
//
//}
//
//    @IBAction func answerTapped(_ sender: UIButton) {
////        switch sender {
////        case 0:
////            <#code#>
////        default:
////            loadPage (whatPage: currentPage.buttonLinks[sender.titleLabel!.text])
////        }
//        print(sender.titleLabel?.text)
//    }
//}
//// Next step: Find out how to change button titles based on previous options. Possible fix: Use the new page file to write multiple stories based on previous buttons.
        
}
    @IBAction func choice1(_ sender: UIButton) {
        option1 = true
        option2 = false
        option3 = false
          desision()
        performSegue(withIdentifier: "segueToSecond", sender: nil)
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

