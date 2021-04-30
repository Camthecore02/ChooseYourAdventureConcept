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
    var currentPage: NewPage = NewPage(pageImage: "1", pageText: "1", buttonOne: "1", buttonTwo: "1", buttonThree: "1", buttonFour: "1", buttonOneLink: "1", buttonTwoLink: "1", buttonThreeLink: "1", buttonFourLink: "1")
    @IBOutlet weak var buttonFour: UIButton!
    var pages: [NewPage] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var start = NewPage(pageImage: "maskedCat", pageText: "Welcome to the begining of the Story", buttonOne: "Begin Good", buttonTwo: "Begin Neutral", buttonThree: "Begin Bad", buttonFour: "Pet the Cat", buttonOneLink: "g1", buttonTwoLink: "n1", buttonThreeLink: "b1", buttonFourLink: "Cat Path")
        var g1 = NewPage(pageImage: "good", pageText: "this is the good path", buttonOne: "continue good", buttonTwo: "neutral", buttonThree: " ", buttonFour: " ", buttonOneLink: "g2", buttonTwoLink: "n2", buttonThreeLink: "N/A", buttonFourLink: "N/A")
        var g2 = NewPage(pageImage: "maskedCat", pageText: "this is a good choice", buttonOne: " ", buttonTwo: " ", buttonThree: " ", buttonFour: "Continue", buttonOneLink: "N/A", buttonTwoLink: "N/A", buttonThreeLink: "N/A", buttonFourLink: "g3")
        var g3 = NewPage(pageImage: "maskedCat", pageText: "this is the good path", buttonOne: "Continue  Good", buttonTwo: "neutral Path", buttonThree: " ", buttonFour: " ", buttonOneLink: "g4", buttonTwoLink: "n4", buttonThreeLink: "N/A", buttonFourLink: "N/A")
        var g4 = NewPage(pageImage: "maskedCat", pageText: "this is the good path", buttonOne: "Continue  Good", buttonTwo: "neutral Path", buttonThree: " ", buttonFour: " ", buttonOneLink: "g5", buttonTwoLink: "n5", buttonThreeLink: "N/A", buttonFourLink: "N/A")
        var g5 = NewPage(pageImage: "maskedCat", pageText: "this is the good path", buttonOne: " ", buttonTwo: " ", buttonThree: " ", buttonFour: "Restart", buttonOneLink: " ", buttonTwoLink: " ", buttonThreeLink: "N/A", buttonFourLink: "start")
        var n1 = NewPage(pageImage: "maskedCat", pageText: "this is the nuetral path", buttonOne: " ", buttonTwo: " ", buttonThree: " ", buttonFour: "Continue", buttonOneLink: " ", buttonTwoLink: " ", buttonThreeLink: "N/A", buttonFourLink: "n2")
        var n2 = NewPage(pageImage: "maskedCat", pageText: "this is the nuetral path", buttonOne: "good", buttonTwo: "neutral", buttonThree: "bad", buttonFour: " ", buttonOneLink: "g3", buttonTwoLink: "n3", buttonThreeLink: "b3", buttonFourLink: " ")
        var n3 = NewPage(pageImage: "maskedCat", pageText: "this is the nuetral path", buttonOne: " ", buttonTwo: " ", buttonThree: " ", buttonFour: "Continue", buttonOneLink: " ", buttonTwoLink: " ", buttonThreeLink: "N/A", buttonFourLink: "n4")
        var n4 = NewPage(pageImage: "maskedCat", pageText: "this is the nuetral path", buttonOne: "good", buttonTwo: "neutral", buttonThree: "bad", buttonFour: " ", buttonOneLink: "g5", buttonTwoLink: "n5", buttonThreeLink: "b5", buttonFourLink: " ")
        var n5 = NewPage(pageImage: "maskedCat", pageText: "this is the nuetral path", buttonOne: " ", buttonTwo: " ", buttonThree: " ", buttonFour: "Restart", buttonOneLink: " ", buttonTwoLink: " ", buttonThreeLink: "N/A", buttonFourLink: "start")
        var b1 = NewPage(pageImage: "maskedCat", pageText: "this is the bad path", buttonOne: " ", buttonTwo: " ", buttonThree: " ", buttonFour: "Continue", buttonOneLink: " ", buttonTwoLink: " ", buttonThreeLink: "N/A", buttonFourLink: "b2")
        var b2 = NewPage(pageImage: "maskedCat", pageText: "this is the bad path", buttonOne: "bad", buttonTwo: "neutral", buttonThree: " ", buttonFour: " ", buttonOneLink: "b3", buttonTwoLink: "n3", buttonThreeLink: " ", buttonFourLink: " ")
        var b3 = NewPage(pageImage: "maskedCat", pageText: "this is the bad path", buttonOne: " ", buttonTwo: " ", buttonThree: " ", buttonFour: "Continue", buttonOneLink: " ", buttonTwoLink: " ", buttonThreeLink: "N/A", buttonFourLink: "b4")
        var b4 = NewPage(pageImage: "maskedCat", pageText: "this is the bad path", buttonOne: "bad", buttonTwo: "neutral", buttonThree: " ", buttonFour: " ", buttonOneLink: "b5", buttonTwoLink: "n5", buttonThreeLink: " ", buttonFourLink: " ")
        var b5 = NewPage(pageImage: "maskedCat", pageText: "this is the nuetral path", buttonOne: " ", buttonTwo: " ", buttonThree: " ", buttonFour: "Restart", buttonOneLink: " ", buttonTwoLink: " ", buttonThreeLink: "N/A", buttonFourLink: "start")
        pages = [start, g1, g2, g3, g4, g5, n1, n2, n3, n4, n5, b1, b2, b3, b4, b5]
        
        loadPage(whatPage: start)
        
        
    }
    func loadPage(whatPage: NewPage) {
        //        currentPage = pages[whatPage]
        pageText.text = currentPage.pageText
        //        buttonOne.setTitle(pages[whatPage].buttonOne, for: .normal)
        //        buttonTwo.setTitle(pages[whatPage].buttonTwo, for: .normal)
        //        buttonThree.setTitle(pages[whatPage].buttonThree, for: .normal)
        //        buttonFour.setTitle(pages[whatPage].buttonFour, for: .normal)
        
        
    }
    @IBAction func choice1(_ sender: UIButton) {
        //  let pageToLoad = currentPage.buttonOneLink
        loadPage(whatPage: pageToLoad as? NewPage)
        
        print(pageToLoad)
    }
    
    @IBAction func choice2(_ sender: Any) {
        loadPage(whatPage: 2)
    }
    
    @IBAction func choice3(_ sender: Any) {
        loadPage(whatPage: 3)
    }
    
    
    @IBAction func nextButton(_ sender: Any) {
        loadPage(whatPage: 0)
    }
    
}
